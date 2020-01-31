FSTAR=fstar.exe

test:
	$(FSTAR) --include src src/*.fst test/*.fst

.PHONY: test
