FSTAR=fstar.exe
MODELS=$(patsubst train_%.py,models/%.fst,$(wildcard train_*.py))

test:
	$(FSTAR) --include src src/*.fst test/*.fst

.PHONY: test

train: $(MODELS)

.PHONY: train

models/:
	mkdir -p models

models/%.h5: train_%.py | models/
	python $<

models/%.fst: models/%.h5 | models/
	python convert.py -i $< -o $@
