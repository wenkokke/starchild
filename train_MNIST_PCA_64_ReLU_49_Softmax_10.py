import matplotlib.pyplot as plt
import numpy as np
import pickle as pkl
from sklearn.decomposition import PCA
from tensorflow import keras

# Load MNIST data
mnist = keras.datasets.mnist

(train_images, train_labels), (test_images, test_labels) = mnist.load_data()

# Scale inputs between [0,1]
train_images = train_images.reshape((-1, 784)) / 255
test_images = test_images.reshape((-1, 784)) / 255

# Reduce dimensionality
pca = PCA(n_components=64)
train_images = pca.fit_transform(
    train_images.reshape((-1, 784))).reshape((-1, 64))
test_images = pca.transform(
    test_images.reshape((-1, 784))).reshape((-1, 64))

# Train network
model = keras.Sequential([
    keras.layers.Dense(49, activation='relu', input_shape=(64,)),
    keras.layers.Dense(10, activation='softmax')
])

model.compile(
    optimizer='adam',
    loss='sparse_categorical_crossentropy',
    metrics=['accuracy'])

model.fit(train_images, train_labels, epochs=10)

# Save model
test_loss, test_acc = model.evaluate(test_images,  test_labels, verbose=2)

print('Test accuracy:', test_acc)
model.summary()

model.save('models/MNIST_PCA_64_ReLU_49_Softmax_10.h5')

# Save inputs and outputs for ideal images
ideal = {'0':4655 , '1':7748 , '2':1584, '3':26364, '4':26172,
         '5':19175, '6':58755, '7':9724, '8':35484, '9':19085}

ideal = {label: (ideal_in,
                 model.predict(np.array([ideal_in]))[0])
         for label, index in ideal.items()
         for ideal_in in [train_images[index]]}

with open('models/MNIST_PCA_64_ReLU_49_Softmax_10.ideal.pkl', 'wb') as fp:
    pkl.dump(ideal, fp)
