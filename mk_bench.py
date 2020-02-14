from getopt import getopt, GetoptError
from tensorflow import keras
from sys import argv, exit

def mk_model(units):
    """Create a model with a number of units and save it."""
    model = keras.Sequential([
        keras.layers.Dense(units, input_shape=(1,)),
    ])
    model.compile(optimizer='adam',
                  loss='sparse_categorical_crossentropy',
                  metrics=['accuracy'])

    model.summary()
    model.save('bench/Random_{units}_Linear_1.h5'.format(
        units=units))

def help():
    print('Usage: python mk_bench.py --start [NUM] --stop [NUM] --step [NUM]')
    exit(2)

if __name__ == "__main__":
    start = 1
    stop  = 100
    step  = 1
    try:
        opts, args = getopt(argv[1:], 'h', ['start', 'stop', 'step'])
    except GetoptError:
        help()
    for opt, arg in opts:
        if opt == '-h': help()
        if opt == '--start': start = int(arg)
        if opt == '--stop': stop = int(arg)
        if opt == '--step': step = int(arg)
    for units in range(start, stop + step, step):
        mk_model(units)
