import pathlib
import re

gcode_input_file = 'SkirtCube.gcode'


class GcodeModifier:
    def __init__(self, gcode_filepath):
        # import gcode file as list of lines
        with open(gcode_filepath + '.gcode', 'r') as file:
            self.gcode = file.readlines()

        # parse gcode for print layers
        self.print_layers = self.get_print_layers()

    def get_print_layers(self):
        layers = dict()

        p = re.compile(r'LAYER:(?P<value>\d+)')

        # search each line for LAYER:
        for line in self.gcode:
            m = p.search(line)

            # if found, store layer number and gcode line index in dict
            if m:
                layers[int(m.group('value'))] = self.gcode.index(line)

        return layers

    def shift_layer(self, print_layer, x_shift=0.0, y_shift=0.0):
        # extract slice from gcode correspond to print layer
        print_layer_gcode = self.gcode[self.print_layers[print_layer]:self.print_layers[print_layer + 1]]

        # regex of line to modify
        p = re.compile(r'G1 X(?P<x>\d+.\d+) Y(?P<y>\d+.\d+)')

        # enumerate so the line can modified
        for i, line in enumerate(print_layer_gcode):
            m = p.search(line)
            if m:
                # shift x and y values
                x = float(m.group('x')) + x_shift
                y = float(m.group('y')) + y_shift

                # update line with shifted x and y values
                print_layer_gcode[i] = p.sub(f'G1 X{x} Y{y}', line)

        # update gcode
        self.gcode[self.print_layers[print_layer]:self.print_layers[print_layer + 1]] = print_layer_gcode
        print(f"Shifted layer {print_layer} by dX = {x_shift}, dY = {y_shift}.")

    def export_gcode(self, filename):
        """Exports modified gcode to a .gcode file.

        Args:
            filename: The name of the gcode file (without .gcode extension).
        """

        with open(f'{filename}.gcode', 'x') as file:
            for line in self.gcode:
                file.write(f'{line}')

        print(f"Exported modified gcode to {filename}.gcode!")


if __name__ == "__main__":
    # ask for file to modify
    gcode_file = input("Which gcode file you would like to edit?: ")
    gcode_modifier = GcodeModifier(gcode_file)

    print(f"Number of print layers: {sorted(gcode_modifier.print_layers)[-1]}")

    # ask for layer to modify
    layer_to_modify = int(input("Which layer would you like to modify?: "))
    x_delta = float(input("How much to shift X axis?: "))
    y_delta = float(input("How much to shift Y axis?: "))

    gcode_modifier.shift_layer(layer_to_modify, x_delta, y_delta)

    output_file = input("What is the name of the file you would like to write the modified gcode to?: ")
    gcode_modifier.export_gcode(output_file)
