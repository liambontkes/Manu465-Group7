import pathlib
import re
import random


class GcodeModifier:
    def __init__(self, gcode_filepath):
        # import gcode file as list of lines
        with open(gcode_filepath + '.gcode', 'r') as file:
            self.gcode = file.readlines()

        # parse gcode for print layers
        self.print_layers = self.get_print_layers()

    def get_print_layers(self):
        """Gets line numbers of each print layer.

        Returns:
            dict: Layer number and gcode line index.
        """

        layers = dict()

        p_start = re.compile(r'LAYER:(?P<value>\d+)')
        p_end = re.compile(r'TIME_ELAPSED')

        # search each line for LAYER:
        for start_i, gcode_line in enumerate(self.gcode):
            m_start = p_start.search(gcode_line)

            # if found, search for corresponding TIME_ELAPSED within layer
            # signifies end of layer
            if m_start:
                for end_i, layer_line in enumerate(self.gcode[start_i:]):
                    m_end = p_end.search(layer_line)

                    # if found, store start and end index of layer in dict
                    if m_end:
                        layers[int(m_start.group('value'))] = (start_i, end_i + start_i)
                        break

        return layers

    def extract_layer(self, layer_to_extract):
        return self.gcode[self.print_layers[layer_to_extract[0]]:self.print_layers[layer_to_extract[1]]]

    def replace_layer(self, layer_to_replace, replacement_layer):
        self.gcode[self.print_layers[layer_to_replace[0]]:self.print_layers[layer_to_replace[1]]] = replacement_layer

    def shift_layer(self, print_layer, x_shift=0.0, y_shift=0.0):
        # extract layer from gcode corresponding to print layer
        print_layer_gcode = self.extract_layer(print_layer)

        # regex of line to modify
        p = re.compile(r'G1 X(?P<x>\d+.\d+) Y(?P<y>\d+.\d+)')

        # enumerate so the line can modified while being iterated over
        for i, line in enumerate(print_layer_gcode):
            m = p.search(line)
            if m:
                # shift x and y values
                x = float(m.group('x')) + x_shift
                y = float(m.group('y')) + y_shift

                # update line with shifted x and y values
                print_layer_gcode[i] = p.sub(f'G1 X{x} Y{y}', line)

        # update gcode
        self.replace_layer(print_layer, print_layer_gcode)
        print(f"Shifted layer {print_layer} by dX = {x_shift}, dY = {y_shift}.")

    def garble_layer(self, print_layer, max_shift_x=0.0, max_shift_y=0.0):
        # extract layer from gcode corresponding to print layer
        print_layer_gcode = self.extract_layer(print_layer)

        # regex of line to modify
        p = re.compile(r'G1 X(?P<x>\d+.\d+) Y(?P<y>\d+.\d+)')

        # enumerate so the line can modified while being iterated over
        for i, line in enumerate(print_layer_gcode):
            m = p.search(line)

            # randomly skip layers to modify
            if m and random.choice('yn') == 'y':
                # randomly modify x and y values
                x = float(m.group('x')) + random.random() * max_shift_x
                y = float(m.group('y')) + random.random() * max_shift_y

                # update line with shifted x and y values
                print_layer_gcode[i] = p.sub(f'G1 X{x} Y{y}', line)

        # update gcode
        self.replace_layer(print_layer, print_layer_gcode)
        print(f"Randomly modified layer {print_layer}, max shift x = {max_shift_x}, max shift y = {max_shift_y}.")

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

    mod_to_perform = ''
    while mod_to_perform != 'none':
        # ask for modification to perform
        mod_to_perform = input("What modification would you like to perform (shift, garble, none)?: ")

        if mod_to_perform == 'none':
            print("No modification selected.")
            continue

        # ask for layer to modify
        layer_to_modify = int(input("Which layer would you like to modify?: "))

        if mod_to_perform == 'shift':
            x_delta = float(input("How much to shift X axis?: "))
            y_delta = float(input("How much to shift Y axis?: "))
            gcode_modifier.shift_layer(print_layer=layer_to_modify,
                                       x_shift=x_delta,
                                       y_shift=y_delta)

        elif mod_to_perform == 'garble':
            x_delta = float(input("Max amount to shift X axis?: "))
            y_delta = float(input("Max amount to shift Y axis?: "))
            gcode_modifier.garble_layer(print_layer=layer_to_modify,
                                        max_shift_x=x_delta,
                                        max_shift_y=y_delta)

    output_file = input("What is the name of the file you would like to write the modified gcode to?: ")
    gcode_modifier.export_gcode(output_file)
