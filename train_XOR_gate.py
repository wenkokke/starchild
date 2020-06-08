import os
import sys
sys.path.insert(0, os.path.abspath(os.path.dirname(__file__)))

from functools import partial
from itertools import product, repeat
from train_AND_gate import *
import numpy as np

def xor_gate(n, total, model_precision, epsilon_precision):
    """Generate F* module header and imports."""
    return '\n'.join([
        'module XOR_Gate_{n}_Sigmoid_2_Sigmoid_1'.format(n=n),
        '',
        '#reset-options "--max_fuel {fuel} --z3rlimit {rlimit}"'.format(fuel=n+1, rlimit=500),
        '',
        'open FStar.Real',
        'open StarChild.LinearAlgebra',
        'open StarChild.Network',
        '',
        xor_gate_model(n, total, model_precision),
        xor_gate_correctness_constraint(list(repeat(False, n))),
        xor_gate_correctness_constraint([False] + list(repeat(True, n - 1))),
        xor_gate_correctness_constraint(list(repeat(False, n - 1)) + [True]),
        xor_gate_correctness_constraint(list(repeat(True, n)))
    ])

def xor_gate_model(n, total, precision):
    """Generate F* code for the network."""
    weight0       = total / float(n)
    weights0_nand = np.full((n,1), -weight0)
    bias0_nand    = total - (0.5 * weight0)
    weights0_or   = np.full((n,1), weight0)
    bias0_or      = 0.5 * weight0
    weights0      = np.concatenate((weights0_nand, weights0_or), axis=1)
    biases0       = np.array([bias0_nand, bias0_or])
    weight1       = total / 2.0
    weights1      = np.full((2,1), weight1)
    bias1         = -(total - (0.5 * weight1))
    biases1       = np.full((1,), bias1)
    return (
        'val layer0 : layer {n} 2\n'
        'let layer0 =\n'
        '  {{ weights    = {weights0}\n'
        '  ; biases     = {biases0}\n'
        '  ; activation = Sigmoid\n'
        '  }}\n'
        '\n'
        'val layer1 : layer 2 1\n'
        'let layer1 =\n'
        '  {{ weights    = {weights1}\n'
        '  ; biases     = {biases1}\n'
        '  ; activation = Sigmoid\n'
        '  }}\n'
        '\n'
        'val model : network {n} 1 2\n'
        'let model = NStep layer0 (NLast layer1)\n'
    ).format(
        n=n,
        weights0=indent_by(17, convert_matrix(weights0, precision)),
        biases0=convert_vector(biases0, precision),
        weights1=indent_by(17, convert_matrix(weights1, precision)),
        biases1=convert_vector(biases1, precision)
    )

def xor(inputs):
    return any(inputs) and not all(inputs)

def xor_gate_correctness(n):
    """Generate F* code for the correctness conditions."""
    return ''.join(map(and_gate_correctness_constraint, all_inputs(n=n)))

def xor_gate_correctness_constraint(inputs):
    """Generate F* a correctness constraint for an n-ary AND Gate."""
    return 'let _ = assert(run_network model {inputs} == [{output}])\n'.format(
        inputs=convert_vector(list(map(float, inputs)), precision=1),
        output=convert_real(float(xor(inputs)), precision=1)
    )

if __name__ == "__main__":
    filename_tpl = 'benchmarks/XOR_Gate_{n}_Sigmoid_2_Sigmoid_1.fst'
    for n in range(2,100):
        with open(filename_tpl.format(n=n), 'w') as fp:
            fp.write(xor_gate(n, total=1E9, model_precision=9, epsilon_precision=9))
