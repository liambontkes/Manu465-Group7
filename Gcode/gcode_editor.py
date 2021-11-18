import pathlib
import re

gcode_input_file = 'SkirtCube.gcode'


class Gcode:
    def __init__(self, gcode_file):
        self.gcode = import_file(gcode_file)
        self.print_layers = self.get_print_layers()

    def get_print_layers(self):
        layers = dict()

        p = re.compile(r'LAYER:(?P<value>\d+)')
        
        # search each line for LAYER:
        for line in self.gcode:
            m = p.match(line)

            # if found, store layer number and gcode line index in dict
            if m:
                layers[int(m.group('value'))] = self.gcode.index(line)

        return layers

    def shift_layer(self, print_layer, x_delta=0, y_delta=0):
        # catch non-existent layers
        if print_layer not in self.print_layers:
            print(f"Print layer {print_layer} not in gcode.")
            return

        else:
            # extract slice from gcode correspond to print layer
            layer_gcode = self.gcode[self.print_layers[print_layer]:self.print_layers[print_layer + 1]]

            p = re.compile(r'G1 X(?P<x>\d+.\d+) Y(?P<y>\d+.\d+)')
            for line in layer_gcode:
                m = p.match(line)
                if m:
                    # shift x and y values
                    x_shift = float(m.group('x')) + x_delta
                    y_shift = float(m.group('y')) + y_delta

                    # update line with shifted x and y values
                    line = p.sub(f'G1 X{x_shift} Y{y_shift}', line)

            # update gcode
            self.gcode[self.print_layers[print_layer]:self.print_layers[print_layer + 1]] = layer_gcode


def import_file(path):
    """Imports file as list of strings.

    Args:
        path(str): The file path.

    Returns:
        (list): The file.
    """

    with open(path, 'r') as file:
        gcode = file.readlines()

    return gcode


def export_gcode(gcode, filename):
    """Exports gcode to a .gcode file.

    Args:
        gcode: The gcode to write to file.
        filename: The name of the gcode file (without .gcode extension).
    """

    with open(f'{filename}.gcode', 'x') as file:
        for line in gcode:
            file.write(f'{line}\n')

    print(f"Exported modified gcode to {filename}.gcode!")
