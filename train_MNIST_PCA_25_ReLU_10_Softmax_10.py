
import matplotlib.pyplot as plt
import numpy as np
import pickle as pkl
from sklearn.decomposition import PCA
from tensorflow import keras

import convert


def vector_to_txt(vector, name):
    vals = ', '.join([convert.convert_real(i) for i in vector])
    vals_ls = ('[' + vals + ']')
    vals_ls = vals_ls.replace(",", ";")
    
    file = open('{name}.txt'.format(name=name), 'w')
    file.write(vals_ls)
    file.close()
    
    
# Load MNIST data
mnist = keras.datasets.mnist

(train_images, train_labels), (test_images, test_labels) = mnist.load_data()

# Scale inputs between [0,1]
train_images = train_images.reshape((-1, 784)) / 255
test_images = test_images.reshape((-1, 784)) / 255

# Save inputs and outputs for ideal images
ideal = {'0':4655 , '1':7748 , '2':1584, '3':26364, '4':26172,
         '5':19175, '6':58755, '7':9724, '8':35484, '9':19085}

vector_to_txt(vector=train_images[ideal['0']], name='zero')

# Reduce dimensionality
pca = PCA(n_components=25)
train_images = pca.fit_transform(
    train_images.reshape((-1, 784))).reshape((-1, 25))
test_images = pca.transform(
    test_images.reshape((-1, 784))).reshape((-1, 25))

vector_to_txt(vector=train_images[ideal['0']], name='zero_pca')

# Train network
model = keras.Sequential([
    keras.layers.Dense(10, activation='relu', input_shape=(25,)),
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

vector_to_txt(
    vector=model.predict(train_images[ideal['0']].reshape((1, -1))).flatten(), 
    name='zero_pca_pred')

model.save('models/MNIST_PCA_25_ReLU_10_Softmax_10.h5')

ideal = {label: (ideal_in,
                  model.predict(np.array([ideal_in]))[0])
          for label, index in ideal.items()
          for ideal_in in [train_images[index]]}

with open('models/MNIST_PCA_25_ReLU_10_Softmax_10.ideal.pkl', 'wb') as fp:
    pkl.dump(ideal, fp)

