MODELS=$(patsubst train_%.py,models/%.fst,$(wildcard train_*.py))
FUEL=9999
IFUEL=9999
RLIMIT=9999
FSTAR=fstar.exe --cache_checked_modules --fuel $(FUEL) --ifuel $(IFUEL) --z3rlimit $(RLIMIT)

build:
	$(FSTAR) --include src src/*.fst

test:
	$(FSTAR) --include src \
		models/AND_Gate_2_Sigmoid_1.fst \
		models/Moons_2_ReLU_10_ReLU_10_Softmax_2.fst \
		models/SwissRolls_3_ReLU_10_ReLU_10_Softmax_2.fst

.PHONY: test

train: $(MODELS)

.PHONY: train

models/:
	mkdir -p models

models/%.h5: train_%.py | models/
	python $<

models/%.fst: models/%.h5 | models/
	python convert.py -i $< -o $@
