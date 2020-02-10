FSTAR=fstar.exe

test:
	$(FSTAR) --include src src/*.fst test/*.fst

.PHONY: test

models/Fashion_MNIST_784_ReLU_128_Softmax_10.h5:
	python train_fashion_mnist.py

models/Fashion_MNIST_PCA_100_ReLU_64_Softmax_10.h5:
	python train_fashion_mnist_pca.py

models/%.fst: models/%.h5
	python convert.py -i $< > $@
