import numpy as np
from sklearn.datasets import make_moons
from sklearn.model_selection import train_test_split
from tensorflow import keras

# Create data
x, y = make_moons(n_samples=1000,noise=0.1)

x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.15)


# Train network
model = keras.Sequential([
    keras.layers.Dense(units=10, activation='relu'),
    keras.layers.Dense(units=10, activation='relu'),
    keras.layers.Dense(2, activation='softmax')
])

model.compile(optimizer='adam',
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

model.fit(x_train, y_train, epochs=10)

test_loss, test_acc = model.evaluate(x_test,  y_test, verbose=2)

print('\nTest accuracy:', test_acc)
model.summary()

model.save('models/Moons_2_ReLU_10_ReLU_10_Softmax_2.h5')
