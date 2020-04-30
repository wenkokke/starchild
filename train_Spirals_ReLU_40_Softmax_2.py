
import matplotlib.pyplot as plt
import numpy as np
import os
import pickle as pkl
from sklearn.decomposition import PCA
from sklearn.model_selection import train_test_split
from tensorflow import keras

import convert

    
# Load spirals, spirals are approx. 0.5*pi awy from each other
# x_data = np.load(file='spiral_datasets/x_data_7.5.npy')
# y_data = np.load(file='spiral_datasets/y_data_7.5.npy')
x_data = np.load(file='spiral_datasets/x_data_9.0.npy')
y_data = np.load(file='spiral_datasets/y_data_9.0.npy')

x_train, x_test, y_train, y_test = train_test_split(
    x_data, y_data, test_size=0.33)


# TODO: Sampleofor testing:
rand_ind = np.random.randint(0, x_train.shape[0], 1)
sample = x_train[rand_ind]
sample_label = y_train[rand_ind]
print('sample: ', sample)
print('sample_label: ', sample_label)


# Train network
model = keras.Sequential([
    keras.layers.Dense(40, activation='relu', input_shape=(2,)),
    keras.layers.Dense(40, activation='relu'),
    keras.layers.Dense(10, activation='softmax')
])

model.compile(
    optimizer='adam',
    loss='sparse_categorical_crossentropy',
    metrics=['accuracy'])

model.fit(x_train, y_train, epochs=50)

# Save model
train_loss, train_acc = model.evaluate(x_train, y_train, verbose=2)
test_loss, test_acc = model.evaluate(x_test, y_test, verbose=2)

model.summary()
print('Train accuracy:', train_acc)
print('Test accuracy:', test_acc)


# model.save('models/Spirals_ReLU_40_Softmax_10.h5')

