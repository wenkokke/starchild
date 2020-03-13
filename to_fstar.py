
import os
import re
import sys
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
import convert
import numpy as np


vector = np.random.normal(0, 1, size=(1, 3))


def convert_raw_vector(vector):
    """ Pretty-print a Keras vector as a StarChild vector with only the 
    values. """
    vals = ', '.join([convert.convert_real(i) for i in vector.flatten()])
    vals_ls = ('[' + vals + ']')
    return vals_ls.replace("'", "")

print(convert.convert_vector(vector))
print(convert_raw_vector(vector))

