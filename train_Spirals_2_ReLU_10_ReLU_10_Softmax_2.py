import numpy as np
import pickle as pkl
from sklearn.model_selection import train_test_split
from tensorflow import keras

# Load data
x_data = np.load(file='data/spirals_x_9.0.npy')
y_data = np.load(file='data/spirals_y_9.0.npy').astype(int)

x_train, x_test, y_train, y_test = \
    train_test_split(x_data, y_data, test_size=0.33)

# Train network
model = keras.Sequential([
    keras.layers.Dense(10, activation='relu', input_shape=(2,)),
    keras.layers.Dense(10, activation='relu'),
    keras.layers.Dense(2, activation='softmax')
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

model.save('models/Spirals_2_ReLU_10_ReLU_10_Softmax_2.h5')

# Save inputs and outputs for ideal images
def sample_spiral(label):
    label_mask = (y_data == label).flatten()
    label_count = np.count_nonzero(label_mask)
    return x_data[label_mask][np.random.randint(0, label_count, 1)][0]

spiral0_in = sample_spiral(0)
spiral0_out = model.predict(np.array([spiral0_in]))[0]
spiral1_in = sample_spiral(1)
spiral1_out = model.predict(np.array([spiral1_in]))[0]

ideal = {'spiral0': (spiral0_in, spiral0_out),
         'spiral1': (spiral1_in, spiral1_out)}

with open('models/Spirals_2_ReLU_10_ReLU_10_Softmax_2.ideal.pkl', 'wb') as fp:
    pkl.dump(ideal, fp)
