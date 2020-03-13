import matplotlib.pyplot as plt
import numpy as np
import pickle as pkl
from sklearn.decomposition import PCA
from tensorflow import keras

import convert

# Load Fashion MNIST data
fashion_mnist = keras.datasets.mnist

(train_images, train_labels), (test_images, test_labels) = fashion_mnist.load_data()

# Scale inputs between [0,1]
train_images = train_images.reshape((-1, 784)) / 255
test_images = test_images.reshape((-1, 784)) / 255


# ideal = {
#     '0':[4655, 5884, 46535], 
#     '1':[7748, 48044, 5824], 
#     '2':[1584, 31258, 20242], 
#     '3':[26364, 19247, 25631], 
#     '4':[26172, 32832, 39492], 
#     '5':[19175, 32566, 25411], 
#     '6':[58755, 41500, 45410], 
#     '7':[9724, 59665, 6915], 
#     '8':[35484, 41132, 50302], 
#     '9':[19085, 3481, 25375]}
ideal = {
    '0':[4655], 
    '1':[7748], 
    '2':[1584], 
    '3':[26364], 
    '4':[26172], 
    '5':[19175], 
    '6':[58755], 
    '7':[9724], 
    '8':[35484], 
    '9':[19085]}
ideal_inds = np.array([*ideal.values()]).flatten().tolist()

# for key in ideal.keys():
#     print(key)
#     for ind in ideal[key]:
#         print(ind)
#         plt.figure()
#         plt.imshow(train_images[ind].reshape(28, 28), cmap='Greys')
#         plt.title('label: {label}, ind: {ind}'.format(
#             label=train_labels[ind], ind=ind))
#         plt.show()

train_ideal = train_images[ideal_inds]

for i in range(train_ideal.shape[0]):
    file = open('data/ideal_train_{label}.txt'.format(label=i), 'w')
    file.write(convert.convert_raw_vector(train_ideal[i]) + '\n')
    file.close()

# Reduce dimensionality
pca = PCA(n_components=64)
train_images = pca.fit_transform(
    train_images.reshape((-1, 784))).reshape((-1, 64))
test_images = pca.transform(test_images.reshape((-1, 784))).reshape((-1, 64))

train_ideal = train_images[ideal_inds]

for i in range(train_ideal.shape[0]):
    file = open('data/ideal_train_pca_{label}.txt'.format(label=i), 'w')
    file.write(convert.convert_raw_vector(train_ideal[i]) + '\n')
    file.close()

# Train network
model = keras.Sequential([
    keras.layers.Dense(49, activation='relu'),
    keras.layers.Dense(10, activation='softmax')
])

model.compile(
    optimizer='adam', loss='sparse_categorical_crossentropy',
    metrics=['accuracy'])

model.fit(train_images, train_labels, epochs=10)

# Prediction on 'ideals' after PCA:
print(np.argmax(model.predict(train_ideal), axis=1))

train_ideal_probs = model.predict(train_ideal)

for i in range(train_ideal_probs.shape[0]):
    file = open('data/ideal_train_probs_{label}.txt'.format(label=i), 'w')
    file.write(convert.convert_raw_vector(train_ideal_probs[i]) + '\n')
    file.close()


test_loss, test_acc = model.evaluate(test_images,  test_labels, verbose=2)

print('\nTest accuracy:', test_acc)
model.summary()

model.save('models/MNIST_PCA_64_ReLU_49_Softmax_10.h5')

