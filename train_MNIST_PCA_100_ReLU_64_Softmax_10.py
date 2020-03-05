from sklearn.decomposition import PCA
from tensorflow import keras

# Load Fashion MNIST data
fashion_mnist = keras.datasets.mnist

(train_images, train_labels), (test_images, test_labels) = fashion_mnist.load_data()

# Scale inputs between [0,1]
train_images = train_images / 255
test_images = test_images / 255

# Reduce dimensionality
pca = PCA(n_components=100)
train_images = pca.fit_transform(train_images.reshape((-1, 784))).reshape((-1, 10, 10))
test_images = pca.transform(test_images.reshape((-1, 784))).reshape((-1, 10, 10))

# Train network
model = keras.Sequential([
    keras.layers.Flatten(input_shape=(10, 10)),
    keras.layers.Dense(64, activation='relu'),
    keras.layers.Dense(10, activation='softmax')
])

model.compile(optimizer='adam',
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

model.fit(train_images, train_labels, epochs=10)

test_loss, test_acc = model.evaluate(test_images,  test_labels, verbose=2)

print('\nTest accuracy:', test_acc)
model.summary()

model.save('models/MNIST_PCA_100_ReLU_64_Softmax_10.h5')
