from functools import partial
from itertools import product, repeat
import numpy as np

def and_gate(n, total, model_precision, epsilon_precision):
    """Generate F* module header and imports."""
    return '\n'.join([
        'module AND_Gate_{n}_Sigmoid_1'.format(n=n),
        '',
        '#reset-options "--max_fuel {fuel} --z3rlimit {rlimit}"'.format(fuel=0, rlimit=500),
        '',
        'open FStar.Real',
        'open StarChild.LinearAlgebra',
        'open StarChild.Network',
        '',
        and_gate_model(n, total, model_precision),
        and_gate_correctness_constraint(list(repeat(False, n))),
        and_gate_correctness_constraint([False] + list(repeat(True, n - 1))),
        and_gate_correctness_constraint(list(repeat(False, n - 1)) + [True]),
        and_gate_correctness_constraint(list(repeat(True, n)))
    ])

def and_gate_model(n, total, precision):
    """Generate F* code for the network."""
    weight  = total / float(n)
    weights = np.full((n,1), weight)
    bias    = -(total - (0.5 * weight))
    biases  = np.full((1,), bias)
    return (
        'val layer0 : layer {n} 1\n'
        'let layer0 =\n'
        '  {{ weights    = {weights}\n'
        '  ; biases     = {biases}\n'
        '  ; activation = Sigmoid\n'
        '  }}\n'
        '\n'
        'val model : network {n} 1 1\n'
        'let model = NLast layer0\n'
    ).format(
        n=n,
        weights=indent_by(17, convert_matrix(weights, precision)),
        biases=convert_vector(biases, precision)
    )

def and_gate_correctness(n):
    """Generate F* code for the correctness conditions."""
    return ''.join(map(and_gate_correctness_constraint, all_inputs(n=n)))

def and_gate_correctness_constraint(inputs):
    """Generate F* a correctness constraint for an n-ary AND Gate."""
    return 'let _ = assert_norm(run_network model {inputs} == [{output}])\n'.format(
        inputs=convert_vector(list(map(float, inputs)), precision=1),
        output=convert_real(float(all(inputs)), precision=1)
    )

def and_gate_robustness(n):
    """Generate F* code for the robustness conditions."""
    return ''.join([
        and_gate_robustness_preamble(n),
        ''.join(map(and_gate_robustness_constraint, all_inputs(n)))
    ])

def and_gate_robustness_preamble(n, precision):
    """Generate F* code preamble for the robustness conditions."""
    return (
        'let epsilon  = {epsilon}\n'
        'let truthy x = dist x 1.0R <. epsilon\n'
        'let falsey x = dist x 0.0R <. epsilon\n'
    ).format(
        epsilon=convert_real((0.5-1E-7)/float(n), precision)
    )

def and_gate_robustness_constraint(inputs):
    """Generate F* a robustness constraint for an n-ary AND Gate."""
    argnames = convert_vector([
        'x{i}'.format(i=i)
        for i, _ in enumerate(inputs)], precision=1)
    argtypes = ' '.join([
        '(x{i}:real{{{test} x{i}}})'.format(i=i, test=('truthy' if v else 'falsey'))
        for i, v in enumerate(inputs)
    ])
    return (
        'let _ = assert(forall {argtypes}. run_network model {argnames} == [{output}])\n'
    ).format(
        argtypes=argtypes,
        argnames=argnames,
        output=convert_real(float(all(inputs)), precision=1)
    )

def all_inputs(n):
    """Compute all possible inputs for the AND-Gate."""
    return product([False, True], repeat=n)

def convert_real(x, precision):
    """Pretty-print a float as an F* real."""
    if isinstance(x, float):
        if x >= 0.0:
            return '{:.{}f}R'.format(x, precision)
        else:
            return '~.{:.{}f}R'.format(abs(x), precision)
    elif isinstance(x, str):
        return x
    else:
        return str(x)

def convert_vector(vector, precision):
    """Convert a list of floats to StarChild."""
    vals='[{}]'.format('; '.join(map(partial(convert_real, precision=precision), vector)))
    return assert_length(vals, len(vector))

def convert_matrix(matrix, precision):
    """Convert a matrix of floats to StarChild."""
    n_vals=len(matrix)
    vals=map(partial(convert_vector, precision=precision), matrix)
    vals=map(partial(indent_by,2), vals)
    vals='[ {}\n]'.format('\n; '.join(vals))
    return assert_length(vals, n_vals)

def indent_by(n, lines):
    """Indent each line after the first by `n`."""
    return lines.replace('\n', '\n'+n*' ')

def assert_length(vals, n_vals):
    """Pretty-print an assertion stating `vals` has length `n_vals`."""
    return '(let v = {vals} in assert_norm (length v = {n_vals}); v)'.format(
        vals=indent_by(9,vals),
        n_vals=n_vals)

if __name__ == "__main__":
    filename_tpl = 'benchmarks/AND_Gate_{n}_Sigmoid_1.fst'
    for n in range(2,100):
        with open(filename_tpl.format(n=n), 'w') as fp:
            fp.write(and_gate(n, total=1E9, model_precision=9, epsilon_precision=9))
