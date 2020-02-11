from functools import reduce
from getopt import getopt, GetoptError
from pathlib import Path
from sys import argv, exit
from tensorflow.keras.models import load_model

def convert_real(x):
    """Pretty-print a float as an F* real."""
    if x >= 0.0:
        return '{0:.8f}R'.format(x)
    else:
        return '~.{0:.8f}R'.format(abs(x))

def convert_matrix_row(row):
    """Pretty-print a row of floats as an F* list."""
    return '[{}]'.format('; '.join(map(convert_real, row)))

def convert_matrix(matrix):
    """Pretty-print a Keras matrix as a StarChild matrix."""
    return '[ {}\n]'.format('\n; '.join(map(convert_matrix_row, matrix.tolist())))

def convert_vector(vector):
    """Pretty-print a Keras vector as a StarChild vector."""
    return convert_matrix_row(vector.tolist()[0])

def convert_activation(activation):
    """Pretty-print a Keras activation function as a StarChild constructor."""
    return {'relu': 'ReLU', 'sigmoid': 'Sigmoid', 'softmax': 'Softmax'}[activation]

def convert_layer(index, layer):
    """Pretty-print a Keras layer as a StarChild definition."""
    params = layer.get_weights()
    weights = params[0]
    rows = weights.shape[0]
    cols = weights.shape[1]
    biases = params[1].reshape((1, -1))
    activation = layer.get_config()['activation']
    return ('val layer_{index} : layer {rows} {cols}\n'
            'let layer_{index} =\n'
            '  {{ weights    = {weights}\n'
            '  ; biases     = {biases}\n'
            '  ; activation = {activation}\n'
            '  }}').format(
                index=index,
                rows=rows,
                cols=cols,
                weights=convert_matrix(weights).replace('\n','\n'+17*' '),
                biases=convert_vector(biases),
                activation=convert_activation(activation))

def convert_layer_list(layers, n_in, n_out):
    layers[-1] = 'NLast {}'.format(layers[-1])
    layer_list = reduce(lambda x, y: 'NStep {} ({})'.format(y, x),reversed(layers))
    return ('val model : network {n_in} {n_out} {n_layers}\n'
            'let model = {layer_list}').format(
                n_in=n_in, n_out=n_out, layer_list=layer_list, n_layers=len(layers))

def convert_model(ifile, ofile):
    """Pretty-print a Keras models from a H5 file."""

    # Open output file
    with open(ofile, 'w') as os:

        # Print file preamble
        module_name = Path(ofile).resolve().stem
        os.write(('module {}\n'
                  '\n'
                  'open StarChild.LinearAlgebra\n'
                  'open StarChild.Network\n'
                  '\n').format(module_name))

        # Load model
        model = load_model(ifile)

        # Print layer definitions
        layers = []
        n_in = None
        n_out = None
        for index, layer in enumerate(model.layers):
            params = layer.get_weights()
            if len(params) > 0:
                weights = params[0]
                rows = weights.shape[0]
                cols = weights.shape[1]
                layers.append('layer_{}'.format(index))
                if n_in is None: n_in = rows
                n_out = cols
                os.write(convert_layer(index, layer))
                os.write('\n\n')

        # Print model definition
        os.write(convert_layer_list(layers, n_in, n_out))

def help():
    print('Usage: python convert.py -i [input_file] -o [output_file]')
    exit(2)

if __name__ == "__main__":
    ifile = None
    ofile = None
    try:
        opts, args = getopt(argv[1:], "hi:o:", [])
    except GetoptError:
        help()
    for opt, arg in opts:
        if opt == '-h': help()
        if opt == '-i': ifile = arg
        if opt == '-o': ofile = arg
    if Path(ifile).is_file():
        convert_model(ifile, ofile)
    elif ifile is None:
        help()
    else:
        print("Error: file '" + path + "' not found.")
        exit(3)
