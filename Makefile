MODELS=$(patsubst train_%.py,models/%.fst,$(wildcard train_*.py))
FUEL=8
IFUEL=2
RLIMIT=300
FSTAR=fstar.exe --fuel $(FUEL) --ifuel $(IFUEL) --z3rlimit $(RLIMIT)
MODELS=$(patsubst train_%.py,models/%.fst,$(wildcard train_*.py))
BENCHMARK_START=1
BENCHMARK_STOP=100
BENCHMARK_STEP=1
BENCHMARK_IDS=$(shell seq $(BENCHMARK_START) $(BENCHMARK_STEP) $(BENCHMARK_STOP))
BENCHMARKS_FST=$(foreach n_params,$(BENCHMARK_IDS),bench/Random_$(n_params)_Linear_1.fst)
BENCHMARKS_H5=$(foreach n_params,$(BENCHMARK_IDS),bench/Random_$(n_params)_Linear_1.h5)
BENCHMARKS_H5_HD=$(word 1,$(BENCHMARKS_H5))
BENCHMARKS_H5_TL=$(wordlist 2,$(words $(BENCHMARKS_H5)),$(BENCHMARKS_H5))


.PHONY: build
build:
	$(FSTAR) --cache_checked_modules --include src src/*.fst


.PHONY: test
test:
	$(FSTAR) --include src \
		models/AND_Gate_2_Sigmoid_1.fst \
		models/Moons_2_ReLU_10_ReLU_10_Softmax_2.fst \
		models/SwissRolls_3_ReLU_10_ReLU_10_Softmax_2.fst \
		models/Fashion_MNIST_PCA_100_ReLU_64_Softmax_10.fst


.PHONY: train
train: $(MODELS)

models/:
	mkdir -p models

models/%.h5: train_%.py | models/
	python3 $<

models/%.fst: models/%.h5 | models/
	python3 convert.py -i $< -o $@


.PHONY: benchmark
benchmark: bench/results.csv bench/results.json bench/results.md

bench/results.csv: $(BENCHMARKS_FST)
	hyperfine --export-csv bench/results.csv --export-json bench/results.json --export-markdown bench/results.md -P n_params $(BENCHMARK_START) $(BENCHMARK_STOP) -D $(BENCHMARK_STEP) '$(FSTAR) --include src bench/Random_{n_params}_Linear_1.fst'

bench/results.json: bench/results.csv
	@if test -f $@; then :; else \
		rm -f bench/results.csv; \
		$(MAKE) $(AM_MAKEFLAGS) bench/results.csv; \
	fi

bench/results.md: bench/results.csv
	@if test -f $@; then :; else \
		rm -f bench/results.csv; \
		$(MAKE) $(AM_MAKEFLAGS) bench/results.csv; \
	fi

bench/:
	mkdir -p bench

$(BENCHMARKS_H5_HD): mk_bench.py | bench/
	python3 mk_bench.py --start $(BENCHMARK_START) --stop $(BENCHMARK_STOP) --step $(BENCHMARK_STEP)

define BENCHMARK_H5_template
$(1): $(BENCHMARKS_H5_HD)
	@if test -f $$@; then :; else \
		rm -f $(BENCHMARKS_H5_HD); \
		$(MAKE) $(AM_MAKEFLAGS) $(BENCHMARKS_H5_HD); \
	fi
endef

$(foreach bm,$(BENCHMARKS_H5_TL),$(eval $(call BENCHMARK_H5_template,$(bm))))

bench/%.fst: bench/%.h5
	python3 convert.py -i $< -o $@
