#!/usr/bin/env python
# coding: utf-8

import numpy as np
import sklearn.decomposition as sk
import tensorflow as tf
from convert import convert_model

def mnist_correctness_constraint(s, X, Y, sample_in, sample_out):
    pass
    # s.add(Implies(
    #     And(list(map(lambda x1,x2: x1 == x2, X, sample_in))),
    #     And(list(map(lambda y1,y2: y1 == y2, Y, sample_out)))))

def mnist(n):

    # Load MNIST data
    (train_images, train_labels), (test_images, test_labels) = tf.keras.datasets.mnist.load_data()

    # Scale inputs between [0,1]
    train_images = train_images.reshape((-1, 784)) / 255
    test_images = test_images.reshape((-1, 784)) / 255

    # Reduce dimensionality
    pca = sk.PCA(n_components=n)
    train_images = pca.fit_transform(train_images.reshape((-1, 784))).reshape((-1, n))
    test_images = pca.transform(test_images.reshape((-1, 784))).reshape((-1, n))

    # Train Keras model
    model = tf.keras.Sequential([
        tf.keras.layers.Dense(10, activation='relu', input_shape=(n,)),
        tf.keras.layers.Dense(10, activation='softmax')
    ])
    model.compile(
        optimizer='adam',
        loss='sparse_categorical_crossentropy',
        metrics=['accuracy'])
    model.fit(train_images, train_labels, epochs=20)

    # Test Keras model
    test_loss, test_acc = model.evaluate(test_images,  test_labels, verbose=2)
    print('Test accuracy:', test_acc)
    model.summary()

    # Get inputs and outputs for test images
    ideal = {'0':4655 , '1':7748 , '2':1584, '3':26364, '4':26172,
             '5':19175, '6':58755, '7':9724, '8':35484, '9':19085}
    ideal = {label: (ideal_in, model.predict(np.array([ideal_in]))[0])
             for label, index in ideal.items()
             for ideal_in in [train_images[index]]}

    # Export Keras model to F*
    module_name = 'MNIST_PCA_{n}_ReLU_10_Softmax_10'.format(n=n)
    return convert_model(module_name, model, ideal)

if __name__ == "__main__":
    filename_tpl = 'benchmarks/MNIST_PCA_{n}_ReLU_10_Softmax_10.fst'
    for n in range(10,110,10):
        with open(filename_tpl.format(n=n), 'w') as fp:
            fp.write(mnist(n))
