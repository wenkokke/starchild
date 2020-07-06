from functools import reduce, partial
from getopt import getopt, GetoptError
from pathlib import Path
import pickle as pkl
from sys import argv, exit
from tensorflow.keras.models import load_model

def convert_real(x):
    """Pretty-print a float as an F* real."""
    if x >= 0.0:
        return '{0:.8f}R'.format(x)
    else:
        return '~.{0:.8f}R'.format(abs(x))

def assert_length(vals, n_vals):
    """Pretty-print an assertion stating `vals` has length `n_vals`."""
    return ('(let v = {vals}\n'
            ' in assert_norm (length v = {n_vals}); v)'.format(
                vals=vals, n_vals=n_vals))

def convert_matrix_row(row):
    """Pretty-print a row of floats as an F* list."""
    n_vals=len(row)
    vals='[{}]'.format('; '.join(map(convert_real, row)))
    return assert_length(vals, n_vals)

def convert_matrix(matrix):
    """Pretty-print a Keras matrix as a StarChild matrix."""
    n_vals=len(matrix)
    vals=map(convert_matrix_row, matrix.tolist())
    vals=map(partial(indent_by,2), vals)
    vals='[ {}\n]'.format('\n; '.join(vals))
    vals=indent_by(9,vals)
    return assert_length(vals, n_vals)

def convert_vector(vector):
    """Pretty-print a Keras vector as a StarChild vector."""
    return convert_matrix_row(vector.tolist()[0])

def convert_activation(activation):
    """Pretty-print a Keras activation function as a StarChild constructor."""
    return {
        'linear': 'Linear',
        'relu': 'ReLU',
        'sigmoid': 'Sigmoid',
        'softmax': 'Softmax'}[activation]

def indent_by(n, lines):
    """Indent each line after the first by `n`."""
    return lines.replace('\n', '\n'+n*' ')

def convert_ideal(ideal_label, ideal_in, ideal_out):
    """"""
    n_ideal_in=len(ideal_in)
    n_ideal_out=len(ideal_out)
    return ('val ideal_{ideal_label}_in : vector real {n_ideal_in}\n'
            'let ideal_{ideal_label}_in = {ideal_in}\n'
            '\n'
            'val ideal_{ideal_label}_out : {n_ideal_out}\n'
            'let ideal_{ideal_label}_out = {ideal_out}').format(
                ideal_label=ideal_label,
                n_ideal_in=n_ideal_in,
                n_ideal_out=n_ideal_out,
                ideal_in=convert_matrix_row(ideal_in.tolist()),
                ideal_out=convert_matrix_row(ideal_out.tolist()))

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
                weights=indent_by(17, convert_matrix(weights)),
                biases=indent_by(17, convert_vector(biases)),
                activation=convert_activation(activation))

def convert_layer_list(layers, n_in, n_out):
    layers[-1] = 'NLast {}'.format(layers[-1])
    layer_list = reduce(lambda x, y: 'NStep {} ({})'.format(y, x),reversed(layers))
    return ('val model : network {n_in} {n_out} {n_layers}\n'
            'let model = {layer_list}').format(
                n_in=n_in, n_out=n_out, layer_list=layer_list, n_layers=len(layers))

def convert_model(module_name, model, ideal):

    # Print layer definitions
    layer_defns = []
    layer_names = []
    n_in = None
    n_out = None
    for index, layer in enumerate(model.layers):
        params = layer.get_weights()
        if len(params) > 0:
            weights = params[0]
            rows = weights.shape[0]
            cols = weights.shape[1]
            layer_names.append('layer_{}'.format(index))
            if n_in is None: n_in = rows
            n_out = cols
            layer_defns.append(convert_layer(index, layer))

    # Print model definition
    model_defn = convert_layer_list(layer_names, n_in, n_out)

    # Print ideals
    ideal_defns = []
    for ideal_label, ideal_data in ideal.items():
        ideal_in, ideal_out = ideal_data
        ideal_defns.append(convert_ideal(ideal_label, ideal_in, ideal_out))

    return ('module {module_name}\n'
            '\n'
            'open FStar.Real\n'
            'open StarChild.LinearAlgebra\n'
            'open StarChild.Network\n'
            '\n'
            '#reset-options "--max_fuel 0 --z3rlimit 500"\n'
            '\n'
            '{layer_defns}\n'
            '\n'
            '{model_defn}\n'
            '\n'
            '{ideal_defns}\n'
    ).format(module_name=module_name,
             layer_defns='\n\n'.join(layer_defns),
             model_defn=model_defn,
             ideal_defns='\n\n'.join(ideal_defns))


def main(model_file, fstar_file, ideal_file=None):
    """Pretty-print a Keras models from a H5 file."""

    # Open output file
    with open(fstar_file, 'w') as os:

        module_name = Path(fstar_file).resolve().stem
        model = load_model(model_file)

        if (ideal_file is None):
            ideal = {}
        else:
            with open(ideal_file, 'rb') as fp:
                ideal = pkl.load(fp)
                for ideal_label, ideal_data in ideal.items():
                    ideal_in, ideal_out = ideal_data

        os.write(convert_model(module_name, model, ideal))

def help():
    print('Usage: python convert.py [--with-ideal=[ideal_file]] -i [model_file] -o [fstar_file]')
    exit(2)

if __name__ == "__main__":
    model_file = None
    fstar_file = None
    ideal_file = None
    try:
        opts, args = getopt(argv[1:], "hi:o:", ["with-ideal="])
    except GetoptError:
        help()
    for opt, arg in opts:
        if opt == '-h': help()
        if opt == '-i': model_file = arg
        if opt == '-o': fstar_file = arg
        if opt == '--with-ideal': ideal_file = arg
    if Path(model_file).is_file():
        if not (ideal_file is None or Path(ideal_file).is_file()):
            print("Error: file '" + ideal_file + "' not found.")
        main(model_file, fstar_file, ideal_file=ideal_file)
    elif ifile is None:
        help()
    else:
        print("Error: file '" + model_file + "' not found.")
        exit(3)
