MODELS=$(patsubst train_%.py,models/%.fst,$(wildcard train_*.py))
FUEL=9999
IFUEL=9999
RLIMIT=60
FSTAR=fstar.exe --fuel $(FUEL) --ifuel $(IFUEL) --z3rlimit $(RLIMIT)

build:
	$(FSTAR) --include src src/*.fst

test:
	$(FSTAR) --include src test/*.fst

.PHONY: test

train: $(MODELS)

.PHONY: train

models/:
	mkdir -p models

models/%.h5: train_%.py | models/
	python $<

models/%.fst: models/%.h5 | models/
	python convert.py -i $< -o $@
