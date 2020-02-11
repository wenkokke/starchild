import argparse
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np
from sklearn.datasets import make_moons, make_swiss_roll
from sklearn.model_selection import train_test_split
from tensorflow import keras


parser = argparse.ArgumentParser()
parser.add_argument(
    '--data', help="Name of the dataset: 'moons', 'swiss_roll'.",
    dest='string')
args = parser.parse_args()


# args.data = 'swiss_roll'


#%% Create data

if args.data == 'swiss_roll':
    
    x_1, t_1 = make_swiss_roll(n_samples=1000, noise=0.1)
    x_2, t_2 = make_swiss_roll(n_samples=1000, noise=0.1)
    x_2 *= 0.7
    
    x = np.vstack([x_1, x_2])
    y = np.hstack(
        [np.zeros(x_1.shape[0]), np.ones(x_2.shape[0])]).reshape((-1, 1))

    # fig = plt.figure()
    # ax = Axes3D(fig)
    # ax.scatter(
    #     x_1[:,0], x_1[:,1], x_1[:,2], c=t_1, alpha=1, cmap=plt.cm.Greens)
    # ax.scatter(
    #     x_2[:,0], x_2[:,1], x_2[:,2], c=t_2, alpha=1, cmap=plt.cm.Oranges)
    # ax.set_title('Entangled swiss rolls')
    # plt.show()
    
elif args.data == 'moons':
    
    x, y = make_moons(n_samples=1000,noise=0.1)
    
    # plt.figure()
    # plt.scatter(x[:,0], x[:,1], c=y.flatten(), cmap='viridis')
    # plt.plot()

else:
    pass
    
x_train, x_test, y_train, y_test = train_test_split(
    x, y, test_size=0.15)


#%% Train neural network

model = keras.Sequential([
    keras.layers.Dense(units=10, activation='relu'),
    keras.layers.Dense(units=10, activation='relu'),
    keras.layers.Dense(2, activation='softmax')
])

model.compile(
    optimizer='adam', loss='sparse_categorical_crossentropy',
    metrics=['accuracy'])

model.fit(x_train, y_train, epochs=10)

test_loss, test_acc = model.evaluate(x_test,  y_test, verbose=2)

print('\nTest accuracy:', test_acc)
model.summary()

model.save('models/{data}_ReLU_10_Softmax_2.h5'.format(
    data=args.data))
