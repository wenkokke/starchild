import matplotlib.pyplot as plt
import numpy as np
import pickle as pkl
from sklearn.decomposition import PCA
from tensorflow import keras

# Load Fashion MNIST data
fashion_mnist = keras.datasets.mnist

(train_images, train_labels), (test_images, test_labels) = fashion_mnist.load_data()

# Scale inputs between [0,1]
train_images = train_images.reshape((-1, 784)) / 255
test_images = test_images.reshape((-1, 784)) / 255


ideal = {
    '0':[4655, 5884, 46535], 
    '1':[7748, 48044, 5824], 
    '2':[1584, 31258, 20242], 
    '3':[26364, 19247, 25631], 
    '4':[26172, 32832, 39492], 
    '5':[19175, 32566, 25411], 
    '6':[58755, 41500, 45410], 
    '7':[9724, 59665, 6915], 
    '8':[35484, 41132, 50302], 
    '9':[19085, 3481, 25375]}
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

# TODO 1/2: Save this in your preferred format ..
train_ideal = train_images[ideal_inds]
np.save('models/train_ideal.npy', train_ideal.reshape((-1, 784)))
np.savetxt('models/train_ideal.txt', train_ideal.reshape((-1, 784)), delimiter= '')
pkl.dump(train_ideal.reshape((-1, 784)), open('models/train_ideal.pickle', 'wb'))
pkl.dump(train_ideal.reshape((-1, 784)), open('models/train_ideal.xml', 'wb'))

# train_ideal = np.load('models/train_ideal.npy')
# train_ideal = np.loadtxt('models/train_ideal.txt')
# with open('models/train_ideal.pickle', 'rb') as file:
#     train_ideal = pkl.load(file)

# Reduce dimensionality
pca = PCA(n_components=64)
train_images = pca.fit_transform(
    train_images.reshape((-1, 784))).reshape((-1, 64))
test_images = pca.transform(test_images.reshape((-1, 784))).reshape((-1, 64))


# TODO 2/2: ... and save this in your preferred format:
train_ideal = train_images[ideal_inds]
np.save('models/train_ideal_pca.npy', train_ideal.reshape((-1, 64)))
np.savetxt('models/train_ideal_pca.txt', train_ideal.reshape((-1, 64)), delimiter= '')
pkl.dump(train_ideal.reshape((-1, 64)), open('models/train_ideal_pca.pickle', 'wb'))
pkl.dump(train_ideal.reshape((-1, 64)), open('models/train_ideal_pca.xml', 'wb'))


# Train network
model = keras.Sequential([
    # keras.layers.Flatten(input_shape=(8, 8)),
    keras.layers.Dense(49, activation='relu'),
    keras.layers.Dense(10, activation='softmax')
])

model.compile(
    optimizer='adam', loss='sparse_categorical_crossentropy',
    metrics=['accuracy'])


model.fit(train_images, train_labels, epochs=10)

# Prediction on 'ideals' after PCA:
print(np.argmax(model.predict(train_ideal), axis=1))

test_loss, test_acc = model.evaluate(test_images,  test_labels, verbose=2)

print('\nTest accuracy:', test_acc)
model.summary()

model.save('models/MNIST_PCA_64_ReLU_49_Softmax_10.h5')

