﻿;Generated by Cura LulzBot Edition GCodeWriter Version: 3.6.29
;FLAVOR:Marlin
;TIME:878
;Filament used: 0.82118m
;Layer height: 0.3
;Generated with Cura_SteamEngine 3.6.29-2
M82 ;absolute extrusion mode
;This G-Code has been generated specifically for the LulzBot TAZ Workhorse with HS+ Tool Head
M73 P0 ; clear GLCD progress bar
M75 ; start GLCD timer
G26 ; clear potential 'probe fail' condition
M107 ; disable fans
M420 S0 ; disable previous leveling matrix
G90 ; absolute positioning
M82 ; set extruder to absolute mode
G92 E0 ; set extruder position to 0
M140 S75.0 ; start bed heating up
M109 R185 ; soften filament before homing Z
G28 ; Home all axis
G1 E-30 F100 ; retract filament
G12                         ; wiping sequence
M109 R160 ; wait for extruder to reach probe temp
G1 X288 Y-10 F4000; move above first probe point
M204 S100 ; set probing acceleration
G29       ; start auto-leveling sequence
M420 S1   ; activate bed level matrix
M425 Z    ; use measured Z backlash for compensation
M425 Z F0 ; turn off measured Z backlash compensation. (if activated in the quality settings, this command will automatically be ignored)
M204 S500 ; restore standard acceleration
G1 X0 Y0 Z15 F5000 ; move up off last probe point
G4 S1 ; pause
M400 ; wait for moves to finish
M117 Heating... ; progress indicator message on LCD
M109 R225 ; wait for extruder to reach printing temp
M190 R75.0 ; wait for bed to reach printing temp
G1 Z2 E0 F75 ; prime tiny bit of filament into the nozzle
M117 TAZ Workhorse Printing... ; progress indicator message on LCD


M221 S100 T0
G92 E0
G1 F900 E-2
;LAYER_COUNT:33
;LAYER:0
M425 F1.0
M107
G0 F6000 X219.688 Y53.498 Z0.7
;TYPE:SKIRT
G1 F900 E0.07838
G1 X219.454 Y52.799 E0.17544
G1 X219.296 Y52.078 E0.27263
G1 X219.209 Y50.991 E0.41621
G1 X219.209 Y31.009 E3.04732
G1 X219.249 Y30.273 E3.14438
G1 X219.368 Y29.545 E3.24151
G1 X219.566 Y28.835 E3.33856
G1 X219.839 Y28.15 E3.43566
G1 X220.185 Y27.499 E3.53273
G1 X220.599 Y26.889 E3.62981
G1 X221.077 Y26.328 E3.72685
G1 X221.613 Y25.821 E3.824
G1 X222.2 Y25.376 E3.921
G1 X222.833 Y24.996 E4.01821
G1 X223.502 Y24.688 E4.11519
G1 X224.201 Y24.454 E4.21225
G1 X224.922 Y24.296 E4.30944
G1 X226.009 Y24.209 E4.45302
G1 X255.991 Y24.21 E8.40087
G1 X256.727 Y24.25 E8.49793
G1 X257.455 Y24.369 E8.59506
G1 X258.165 Y24.567 E8.69211
G1 X258.85 Y24.84 E8.78921
G1 X259.501 Y25.186 E8.88628
G1 X260.111 Y25.6 E8.98336
G1 X260.673 Y26.078 E9.0805
G1 X261.179 Y26.614 E9.17756
G1 X261.624 Y27.202 E9.27466
G1 X262.004 Y27.834 E9.37176
G1 X262.312 Y28.504 E9.46886
G1 X262.546 Y29.203 E9.56592
G1 X262.704 Y29.923 E9.66298
G1 X262.791 Y31.01 E9.80657
G1 X262.791 Y50.991 E12.43754
G1 X262.751 Y51.727 E12.5346
G1 X262.632 Y52.455 E12.63173
G1 X262.434 Y53.165 E12.72878
G1 X262.161 Y53.85 E12.82588
G1 X261.815 Y54.501 E12.92296
G1 X261.401 Y55.111 E13.02003
G1 X260.923 Y55.672 E13.11708
G1 X260.387 Y56.179 E13.21422
G1 X259.8 Y56.624 E13.31122
G1 X259.167 Y57.004 E13.40843
G1 X258.498 Y57.312 E13.50541
G1 X257.799 Y57.546 E13.60247
G1 X257.078 Y57.704 E13.69966
G1 X255.991 Y57.791 E13.84325
G1 X226.009 Y57.791 E17.79109
G1 X225.273 Y57.751 E17.88815
G1 X224.545 Y57.632 E17.98528
G1 X223.835 Y57.434 E18.08233
G1 X223.15 Y57.161 E18.17943
G1 X222.499 Y56.815 E18.2765
G1 X221.889 Y56.401 E18.37358
G1 X221.328 Y55.923 E18.47062
G1 X220.821 Y55.387 E18.56777
G1 X220.376 Y54.8 E18.66477
G1 X219.996 Y54.167 E18.76198
G1 X219.688 Y53.498 E18.85896
G0 F6000 X220.799 Y53.044
G1 F900 X220.591 Y52.408 E18.94707
G1 X220.461 Y51.752 E19.03512
G1 X220.409 Y50.991 E19.13556
G1 X220.409 Y31.009 E21.76667
G1 X220.449 Y30.341 E21.85479
G1 X220.568 Y29.683 E21.94283
G1 X220.765 Y29.043 E22.03101
G1 X221.037 Y28.432 E22.11907
G1 X221.38 Y27.858 E22.20712
G1 X221.789 Y27.328 E22.29527
G1 X222.258 Y26.851 E22.38335
G1 X222.78 Y26.433 E22.47141
G1 X223.349 Y26.081 E22.55951
G1 X223.956 Y25.799 E22.64764
G1 X224.592 Y25.591 E22.73575
G1 X225.248 Y25.461 E22.8238
G1 X226.009 Y25.409 E22.92424
G1 X255.991 Y25.41 E26.87209
G1 X256.659 Y25.45 E26.9602
G1 X257.317 Y25.569 E27.04825
G1 X257.957 Y25.766 E27.13642
G1 X258.568 Y26.038 E27.22449
G1 X259.143 Y26.381 E27.31265
G1 X259.672 Y26.79 E27.4007
G1 X260.149 Y27.259 E27.48878
G1 X260.567 Y27.782 E27.57694
G1 X260.919 Y28.35 E27.66492
G1 X261.201 Y28.957 E27.75305
G1 X261.409 Y29.593 E27.84116
G1 X261.539 Y30.249 E27.92922
G1 X261.591 Y31.01 E28.02966
G1 X261.591 Y50.991 E30.66064
G1 X261.551 Y51.659 E30.74875
G1 X261.432 Y52.317 E30.8368
G1 X261.235 Y52.957 E30.92497
G1 X260.963 Y53.568 E31.01304
G1 X260.62 Y54.142 E31.10108
G1 X260.211 Y54.672 E31.18923
G1 X259.742 Y55.149 E31.27732
G1 X259.22 Y55.567 E31.36537
G1 X258.651 Y55.919 E31.45347
G1 X258.044 Y56.201 E31.5416
G1 X257.408 Y56.409 E31.62971
G1 X256.752 Y56.539 E31.71777
G1 X255.991 Y56.591 E31.81821
G1 X226.009 Y56.591 E35.76605
G1 X225.341 Y56.551 E35.85417
G1 X224.683 Y56.432 E35.94222
G1 X224.043 Y56.235 E36.03039
G1 X223.432 Y55.963 E36.11845
G1 X222.858 Y55.62 E36.2065
G1 X222.328 Y55.211 E36.29465
G1 X221.851 Y54.742 E36.38273
G1 X221.433 Y54.22 E36.47079
G1 X221.081 Y53.651 E36.55889
G1 X220.799 Y53.044 E36.64702
G1 F900 E34.64702
G1 F180 Z2.2
;MESH:
G0 F6000 X255.4 Y50.4 Z2.2
;TYPE:WALL-OUTER
G1 F180 Z0.7
G1 F900 E36.7254
G1 X226.6 Y50.4 E40.51761
G1 X226.6 Y31.6 E42.99307
G1 X255.4 Y31.6 E46.78528
G1 X255.4 Y50.4 E49.26075
G0 F6000 X254.8 Y50.4
G0 X254.2 Y49.2
;TYPE:WALL-INNER
G1 F900 X227.8 Y49.2 E52.73694
G1 X227.8 Y32.8 E54.8964
G1 X254.2 Y32.8 E58.37259
G1 X254.2 Y49.2 E60.53204
G0 F6000 X253.01 Y48.01
;TYPE:SKIN
G1 F900 X228.99 Y48.01 E63.69484
G1 X228.99 Y33.99 E65.54091
G1 X253.01 Y33.99 E68.70372
G1 X253.01 Y48.01 E70.54979
G1 F900 E68.54979
G1 F180 Z2.2
G0 F6000 X252.529 Y35.305 Z2.2
G1 F180 Z0.7
G1 F900 E70.62817
G1 X251.693 Y34.47 E70.78375
G0 F6000 X249.996 Y34.47
G1 F900 X252.529 Y37.002 E71.25534
G0 F6000 X252.529 Y38.699
G1 F900 X248.299 Y34.47 E72.04293
G0 F6000 X246.602 Y34.47
G1 F900 X252.529 Y40.397 E73.14663
G0 F6000 X252.529 Y42.094
G1 F900 X244.905 Y34.47 E74.56633
G0 F6000 X243.207 Y34.47
G1 F900 X252.529 Y43.791 E76.30214
G0 F6000 X252.529 Y45.488
G1 F900 X241.51 Y34.47 E78.35395
G0 F6000 X239.813 Y34.47
G1 F900 X252.529 Y47.185 E80.72176
G0 F6000 X251.176 Y47.529
G1 F900 X238.116 Y34.47 E83.15364
G0 F6000 X236.419 Y34.47
G1 F900 X249.479 Y47.529 E85.58551
G0 F6000 X247.782 Y47.529
G1 F900 X234.722 Y34.47 E88.01739
G0 F6000 X233.025 Y34.47
G1 F900 X246.085 Y47.529 E90.44926
G0 F6000 X244.388 Y47.529
G1 F900 X231.328 Y34.47 E92.88114
G0 F6000 X229.631 Y34.47
G1 F900 X242.691 Y47.529 E95.31301
G0 F6000 X240.994 Y47.529
G1 F900 X229.468 Y36.004 E97.45923
G0 F6000 X229.468 Y37.701
G1 F900 X239.296 Y47.529 E99.28936
G0 F6000 X237.599 Y47.529
G1 F900 X229.468 Y39.398 E100.80347
G0 F6000 X229.468 Y41.095
G1 F900 X235.902 Y47.529 E102.00158
G0 F6000 X234.205 Y47.529
G1 F900 X229.468 Y42.792 E102.88368
G0 F6000 X229.468 Y44.489
G1 F900 X232.508 Y47.529 E103.44977
G0 F6000 X230.811 Y47.529
M104 S225
G1 F900 X229.468 Y46.186 E103.69986
G1 F900 E101.69986
G1 F180 Z2.2
;MESH:NONMESH
G0 F6000 X255.4 Y50.4 Z2.2
;TIME_ELAPSED:71.110910
;LAYER:1
M425 F0
M140 S70
M221 S100 T0
M106 S51
;MESH:
G0 F8400 X255.4 Y50.4 Z2.5
;TYPE:WALL-OUTER
G1 F180 Z1
G1 F900 E103.77823
G1 F1050 X226.6 Y50.4 E105.40347
G1 X226.6 Y31.6 E106.46438
G1 X255.4 Y31.6 E108.08961
G1 X255.4 Y50.4 E109.15053
G0 F8400 X254.8 Y50.4
G0 X254.2 Y49.2
;TYPE:WALL-INNER
G1 F1050 X227.8 Y49.2 E110.64033
G1 X227.8 Y32.8 E111.56581
G1 X254.2 Y32.8 E113.0556
G1 X254.2 Y49.2 E113.98108
G0 F8400 X253.01 Y48.01
;TYPE:SKIN
G1 F1350 X228.99 Y48.01 E115.33657
G1 X228.99 Y33.99 E116.12774
G1 X253.01 Y33.99 E117.48323
G1 X253.01 Y48.01 E118.2744
G0 F8400 X252.529 Y46.152
G1 F1350 X251.151 Y47.53 E118.38438
G0 F8400 X249.454 Y47.53
G1 F1350 X252.529 Y44.455 E118.62978
G0 F8400 X252.529 Y42.758
G1 F1350 X247.757 Y47.53 E119.01062
G0 F8400 X246.06 Y47.53
G1 F1350 X252.529 Y41.061 E119.52688
G0 F8400 X252.529 Y39.364
G1 F1350 X244.363 Y47.53 E120.17858
G0 F8400 X242.666 Y47.53
G1 F1350 X252.529 Y37.667 E120.96571
G0 F8400 X252.529 Y35.97
G1 F1350 X240.969 Y47.53 E121.88828
G0 F8400 X239.272 Y47.53
G1 F1350 X252.332 Y34.47 E122.93055
G0 F8400 X250.635 Y34.47
G1 F1350 X237.575 Y47.53 E123.97282
G0 F8400 X235.878 Y47.53
G1 F1350 X248.938 Y34.47 E125.01509
G0 F8400 X247.241 Y34.47
G1 F1350 X234.181 Y47.53 E126.05736
G0 F8400 X232.483 Y47.53
G1 F1350 X245.544 Y34.47 E127.09968
G0 F8400 X243.847 Y34.47
G1 F1350 X230.786 Y47.53 E128.14199
G0 F8400 X229.469 Y47.15
G1 F1350 X242.15 Y34.47 E129.15397
G0 F8400 X240.453 Y34.47
G1 F1350 X229.469 Y45.453 E130.03053
G0 F8400 X229.469 Y43.756
G1 F1350 X238.756 Y34.47 E130.77165
G0 F8400 X237.058 Y34.47
G1 F1350 X229.469 Y42.059 E131.3773
G0 F8400 X229.469 Y40.362
G1 F1350 X235.361 Y34.47 E131.84752
G0 F8400 X233.664 Y34.47
G1 F1350 X229.469 Y38.665 E132.18231
G0 F8400 X229.469 Y36.968
G1 F1350 X231.967 Y34.47 E132.38167
G0 F8400 X230.27 Y34.47
G1 F1350 X229.469 Y35.271 E132.44559
G1 F900 E130.44559
G1 F180 Z2.5
;MESH:NONMESH
G0 F8400 X255.4 Y50.4 Z2.5
;TIME_ELAPSED:99.711647
;LAYER:2
M425 F0.0
M106 S102
;MESH:
G0 F10800 X255.4 Y50.4 Z2.8
;TYPE:WALL-OUTER
G1 F180 Z1.3
G1 F900 E132.52397
G1 F1200 X226.6 Y50.4 E134.1492
G1 X226.6 Y31.6 E135.21012
G1 X255.4 Y31.6 E136.83535
G1 X255.4 Y50.4 E137.89626
G0 F10800 X254.8 Y50.4
G0 X254.2 Y49.2
;TYPE:WALL-INNER
G1 F1200 X227.8 Y49.2 E139.38606
G1 X227.8 Y32.8 E140.31154
G1 X254.2 Y32.8 E141.80133
G1 X254.2 Y49.2 E142.72681
G0 F10800 X253.01 Y48.01
;TYPE:SKIN
G1 F1800 X228.99 Y48.01 E144.0823
G1 X228.99 Y33.99 E144.87347
G1 X253.01 Y33.99 E146.22896
G1 X253.01 Y48.01 E147.02014
G1 F900 E145.02014
G1 F180 Z2.8
G0 F10800 X252.529 Y35.305 Z2.8
G1 F180 Z1.3
G1 F900 E147.09851
G1 F1800 X251.693 Y34.47 E147.16519
G0 F10800 X249.996 Y34.47
G1 F1800 X252.529 Y37.002 E147.3673
G0 F10800 X252.529 Y38.699
G1 F1800 X248.299 Y34.47 E147.70484
G0 F10800 X246.602 Y34.47
G1 F1800 X252.529 Y40.397 E148.17785
G0 F10800 X252.529 Y42.094
G1 F1800 X244.905 Y34.47 E148.7863
G0 F10800 X243.207 Y34.47
G1 F1800 X252.529 Y43.791 E149.53021
G0 F10800 X252.529 Y45.488
G1 F1800 X241.51 Y34.47 E150.40956
G0 F10800 X239.813 Y34.47
G1 F1800 X252.529 Y47.185 E151.42434
G0 F10800 X251.176 Y47.529
G1 F1800 X238.116 Y34.47 E152.46657
G0 F10800 X236.419 Y34.47
G1 F1800 X249.479 Y47.529 E153.5088
G0 F10800 X247.782 Y47.529
G1 F1800 X234.722 Y34.47 E154.55104
G0 F10800 X233.025 Y34.47
G1 F1800 X246.085 Y47.529 E155.59327
G0 F10800 X244.388 Y47.529
G1 F1800 X231.328 Y34.47 E156.6355
G0 F10800 X229.631 Y34.47
G1 F1800 X242.691 Y47.529 E157.67773
G0 F10800 X240.994 Y47.529
G1 F1800 X229.468 Y36.004 E158.59754
G0 F10800 X229.468 Y37.701
G1 F1800 X239.296 Y47.529 E159.38188
G0 F10800 X237.599 Y47.529
G1 F1800 X229.468 Y39.398 E160.03079
G0 F10800 X229.468 Y41.095
G1 F1800 X235.902 Y47.529 E160.54426
G0 F10800 X234.205 Y47.529
G1 F1800 X229.468 Y42.792 E160.9223
G0 F10800 X229.468 Y44.489
G1 F1800 X232.508 Y47.529 E161.16491
G0 F10800 X230.811 Y47.529
G1 F1800 X229.468 Y46.186 E161.2721
G1 F900 E159.2721
G1 F180 Z2.8
;MESH:NONMESH
G0 F10800 X255.4 Y50.4 Z2.8
;TIME_ELAPSED:124.738183
;LAYER:3
M425 F0.0
M106 S153
;MESH:
G0 X255.4 Y50.4 Z3.1
;TYPE:WALL-OUTER
G1 F180 Z1.6
G1 F900 E161.35047
G1 F1200 X226.6 Y50.4 E162.9757
G1 X226.6 Y31.6 E164.03662
G1 X255.4 Y31.6 E165.66185
G1 X255.4 Y50.4 E166.72277
G0 F10800 X254.8 Y50.4
G0 X254.2 Y49.2
;TYPE:WALL-INNER
G1 F1200 X227.8 Y49.2 E168.21256
G1 X227.8 Y32.8 E169.13804
G1 X254.2 Y32.8 E170.62784
G1 X254.2 Y49.2 E171.55332
G0 F10800 X253.01 Y48.01
;TYPE:SKIN
G1 F1800 X228.99 Y48.01 E172.90881
G1 X228.99 Y33.99 E173.69998
G1 X253.01 Y33.99 E175.05547
G1 X253.01 Y48.01 E175.84664
G0 F10800 X252.529 Y46.152
G1 F1800 X251.151 Y47.53 E175.95661
G0 F10800 X249.454 Y47.53
G1 F1800 X252.529 Y44.455 E176.20202
G0 F10800 X252.529 Y42.758
G1 F1800 X247.757 Y47.53 E176.58285
G0 F10800 X246.06 Y47.53
G1 F1800 X252.529 Y41.061 E177.09912
G0 F10800 X252.529 Y39.364
G1 F1800 X244.363 Y47.53 E177.75082
G0 F10800 X242.666 Y47.53
G1 F1800 X252.529 Y37.667 E178.53795
G0 F10800 X252.529 Y35.97
G1 F1800 X240.969 Y47.53 E179.46051
G0 F10800 X239.272 Y47.53
G1 F1800 X252.332 Y34.47 E180.50279
G0 F10800 X250.635 Y34.47
G1 F1800 X237.575 Y47.53 E181.54506
G0 F10800 X235.878 Y47.53
G1 F1800 X248.938 Y34.47 E182.58733
G0 F10800 X247.241 Y34.47
G1 F1800 X234.181 Y47.53 E183.6296
G0 F10800 X232.483 Y47.53
G1 F1800 X245.544 Y34.47 E184.67191
G0 F10800 X243.847 Y34.47
G1 F1800 X230.786 Y47.53 E185.71423
G0 F10800 X229.469 Y47.15
G1 F1800 X242.15 Y34.47 E186.72621
G0 F10800 X240.453 Y34.47
G1 F1800 X229.469 Y45.453 E187.60277
G0 F10800 X229.469 Y43.756
G1 F1800 X238.756 Y34.47 E188.34389
G0 F10800 X237.058 Y34.47
G1 F1800 X229.469 Y42.059 E188.94954
G0 F10800 X229.469 Y40.362
G1 F1800 X235.361 Y34.47 E189.41976
G0 F10800 X233.664 Y34.47
G1 F1800 X229.469 Y38.665 E189.75455
G0 F10800 X229.469 Y36.968
G1 F1800 X231.967 Y34.47 E189.9539
G0 F10800 X230.27 Y34.47
G1 F1800 X229.469 Y35.271 E190.01783
G1 F900 E188.01783
G1 F180 Z3.1
;MESH:NONMESH
G0 F10800 X255.4 Y50.4 Z3.1
;TIME_ELAPSED:148.681188
;LAYER:4
M425 F0.0
M106 S204
;MESH:
G0 X255.4 Y50.4 Z3.4
;TYPE:WALL-OUTER
G1 F180 Z1.9
G1 F900 E190.09621
G1 F1200 X226.6 Y50.4 E191.72144
G1 X226.6 Y31.6 E192.78235
G1 X255.4 Y31.6 E194.40758
G1 X255.4 Y50.4 E195.4685
G0 F10800 X254.8 Y50.4
G0 X254.2 Y49.2
;TYPE:WALL-INNER
G1 F1200 X227.8 Y49.2 E196.9583
G1 X227.8 Y32.8 E197.88378
G1 X254.2 Y32.8 E199.37357
G1 X254.2 Y49.2 E200.29905
G0 F10800 X253.01 Y48.01
;TYPE:SKIN
G1 F1800 X228.99 Y48.01 E201.65454
G1 X228.99 Y33.99 E202.44571
G1 X253.01 Y33.99 E203.8012
G1 X253.01 Y48.01 E204.59237
G1 F900 E202.59237
G1 F180 Z3.4
G0 F10800 X252.529 Y35.305 Z3.4
G1 F180 Z1.9
G1 F900 E204.67075
G1 F1800 X251.693 Y34.47 E204.73743
G0 F10800 X249.996 Y34.47
G1 F1800 X252.529 Y37.002 E204.93954
G0 F10800 X252.529 Y38.699
G1 F1800 X248.299 Y34.47 E205.27708
G0 F10800 X246.602 Y34.47
G1 F1800 X252.529 Y40.397 E205.75009
G0 F10800 X252.529 Y42.094
G1 F1800 X244.905 Y34.47 E206.35854
G0 F10800 X243.207 Y34.47
G1 F1800 X252.529 Y43.791 E207.10245
G0 F10800 X252.529 Y45.488
G1 F1800 X241.51 Y34.47 E207.9818
G0 F10800 X239.813 Y34.47
G1 F1800 X252.529 Y47.185 E208.99658
G0 F10800 X251.176 Y47.529
G1 F1800 X238.116 Y34.47 E210.03881
G0 F10800 X236.419 Y34.47
G1 F1800 X249.479 Y47.529 E211.08104
G0 F10800 X247.782 Y47.529
G1 F1800 X234.722 Y34.47 E212.12327
G0 F10800 X233.025 Y34.47
G1 F1800 X246.085 Y47.529 E213.16551
G0 F10800 X244.388 Y47.529
G1 F1800 X231.328 Y34.47 E214.20774
G0 F10800 X229.631 Y34.47
G1 F1800 X242.691 Y47.529 E215.24997
G0 F10800 X240.994 Y47.529
G1 F1800 X229.468 Y36.004 E216.16978
G0 F10800 X229.468 Y37.701
G1 F1800 X239.296 Y47.529 E216.95412
G0 F10800 X237.599 Y47.529
G1 F1800 X229.468 Y39.398 E217.60302
G0 F10800 X229.468 Y41.095
G1 F1800 X235.902 Y47.529 E218.1165
G0 F10800 X234.205 Y47.529
G1 F1800 X229.468 Y42.792 E218.49454
G0 F10800 X229.468 Y44.489
G1 F1800 X232.508 Y47.529 E218.73715
G0 F10800 X230.811 Y47.529
G1 F1800 X229.468 Y46.186 E218.84433
G1 F900 E216.84433
G1 F180 Z3.4
;MESH:NONMESH
G0 F10800 X255.4 Y50.4 Z3.4
;TIME_ELAPSED:173.707725
G0 X0 Y200 F10800
G4 P5000
;LAYER:5
M425 F0.0
;MESH:
G0 X255.4 Y50.4 Z3.7
;TYPE:WALL-OUTER
G1 F180 Z2.2
G1 F900 E218.92271
G1 F1200 X226.6 Y50.4 E220.54794
G1 X226.6 Y31.6 E221.60886
G1 X255.4 Y31.6 E223.23409
G1 X255.4 Y50.4 E224.295
G0 F10800 X254.8 Y50.4
G0 X254.2 Y49.2
;TYPE:WALL-INNER
G1 F1200 X227.8 Y49.2 E225.7848
G1 X227.8 Y32.8 E226.71028
G1 X254.2 Y32.8 E228.20008
G1 X254.2 Y49.2 E229.12556
G0 F10800 X253.01 Y48.01
;TYPE:SKIN
G1 F1800 X228.99 Y48.01 E230.48104
G1 X228.99 Y33.99 E231.27222
G1 X253.01 Y33.99 E232.6277
G1 X253.01 Y48.01 E233.41888
G0 F10800 X252.529 Y46.152
G1 F1800 X251.151 Y47.53 E233.52885
G0 F10800 X249.454 Y47.53
G1 F1800 X252.529 Y44.455 E233.77426
G0 F10800 X252.529 Y42.758
G1 F1800 X247.757 Y47.53 E234.15509
G0 F10800 X246.06 Y47.53
G1 F1800 X252.529 Y41.061 E234.67136
G0 F10800 X252.529 Y39.364
G1 F1800 X244.363 Y47.53 E235.32306
G0 F10800 X242.666 Y47.53
G1 F1800 X252.529 Y37.667 E236.11019
G0 F10800 X252.529 Y35.97
G1 F1800 X240.969 Y47.53 E237.03275
G0 F10800 X239.272 Y47.53
G1 F1800 X252.332 Y34.47 E238.07502
G0 F10800 X250.635 Y34.47
G1 F1800 X237.575 Y47.53 E239.1173
G0 F10800 X235.878 Y47.53
G1 F1800 X248.938 Y34.47 E240.15957
G0 F10800 X247.241 Y34.47
G1 F1800 X234.181 Y47.53 E241.20184
G0 F10800 X232.483 Y47.53
G1 F1800 X245.544 Y34.47 E242.24415
G0 F10800 X243.847 Y34.47
G1 F1800 X230.786 Y47.53 E243.28646
G0 F10800 X229.469 Y47.15
G1 F1800 X242.15 Y34.47 E244.29845
G0 F10800 X240.453 Y34.47
G1 F1800 X229.469 Y45.453 E245.175
G0 F10800 X229.469 Y43.756
G1 F1800 X238.756 Y34.47 E245.91613
G0 F10800 X237.058 Y34.47
G1 F1800 X229.469 Y42.059 E246.52178
G0 F10800 X229.469 Y40.362
G1 F1800 X235.361 Y34.47 E246.992
G0 F10800 X233.664 Y34.47
G1 F1800 X229.469 Y38.665 E247.32678
G0 F10800 X229.469 Y36.968
G1 F1800 X231.967 Y34.47 E247.52614
G0 F10800 X230.27 Y34.47
G1 F1800 X229.469 Y35.271 E247.59007
G1 F900 E245.59007
G1 F180 Z3.7
;MESH:NONMESH
G0 F10800 X255.4 Y50.4 Z3.7
;TIME_ELAPSED:197.650730
G0 X0 Y200 F10800
G4 P5000
;LAYER:6
M425 F0.0
;MESH:
G0 X255.4 Y50.4 Z4
;TYPE:WALL-OUTER
G1 F180 Z2.5
G1 F900 E247.66844
G1 F1200 X226.6 Y50.4 E249.29367
G1 X226.6 Y31.6 E250.35459
G1 X255.4 Y31.6 E251.97982
G1 X255.4 Y50.4 E253.04074
G0 F10800 X254.8 Y50.4
G0 X254.2 Y49.2
;TYPE:WALL-INNER
G1 F1200 X227.8 Y49.2 E254.53053
G1 X227.8 Y32.8 E255.45601
G1 X254.2 Y32.8 E256.94581
G1 X254.2 Y49.2 E257.87129
G0 F10800 X252.053 Y48.66
;TYPE:FILL
G1 F2100 X236.733 Y33.34 E259.09392
G1 X236.521 Y33.128
G1 F900 E257.09392
G1 F180 Z4
G0 F10800 X233.339 Y33.34 Z4
G1 F180 Z2.5
G1 F900 E259.1723
G1 F2100 X248.659 Y48.66 E260.39493
G1 X248.871 Y48.872
G1 F900 E258.39493
G1 F180 Z4
G0 F10800 X245.265 Y48.66 Z4
G1 F180 Z2.5
G1 F900 E260.47331
G1 F2100 X229.945 Y33.34 E261.69595
G1 X229.733 Y33.128
G0 F10800 X228.338 Y35.127
G1 F2100 X241.871 Y48.66 E262.77597
G1 X242.083 Y48.872
G1 F900 E260.77597
G1 F180 Z4
G0 F10800 X238.477 Y48.66 Z4
G1 F180 Z2.5
G1 F900 E262.85434
G1 F2100 X228.338 Y38.521 E263.6635
G1 X228.126 Y38.309
G1 F900 E261.6635
G1 F180 Z4
G0 F10800 X228.338 Y41.915 Z4
G1 F180 Z2.5
G1 F900 E263.74188
G1 F2100 X235.083 Y48.66 E264.28017
G1 X235.295 Y48.872
G1 F900 E262.28017
G1 F180 Z4
G0 F10800 X231.689 Y48.66 Z4
G1 F180 Z2.5
G1 F900 E264.35855
G1 F2100 X228.338 Y45.309 E264.62598
G1 X228.126 Y45.097
G1 F900 E262.62598
G1 F180 Z4
G0 F10800 X240.127 Y33.34 Z4
G1 F180 Z2.5
G1 F900 E264.70436
G1 F2100 X253.659 Y46.871 E265.78426
G1 X253.871 Y47.083
G1 F900 E263.78426
G1 F180 Z4
G0 F10800 X253.659 Y43.477 Z4
G1 F180 Z2.5
G1 F900 E265.86264
G1 F2100 X243.521 Y33.34 E266.67168
G1 X243.309 Y33.128
G1 F900 E264.67168
G1 F180 Z4
G0 F10800 X246.916 Y33.34 Z4
G1 F180 Z2.5
G1 F900 E266.75005
G1 F2100 X253.659 Y40.083 E267.28819
G1 X253.871 Y40.295
G1 F900 E265.28819
G1 F180 Z4
G0 F10800 X253.659 Y36.688 Z4
G1 F180 Z2.5
G1 F900 E267.36656
G1 F2100 X250.31 Y33.34 E267.6338
G1 X250.098 Y33.128
G1 F900 E265.6338
G1 F180 Z4
;MESH:NONMESH
G0 F10800 X255.4 Y50.4 Z4
;TIME_ELAPSED:224.355962
G0 X0 Y200 F10800
G4 P5000
;LAYER:7
M425 F0.0
;MESH:
G0 X255.4 Y50.4 Z4.3
;TYPE:WALL-OUTER
G1 F180 Z2.8
G1 F900 E267.71217
G1 F1200 X226.6 Y50.4 E269.33741
G1 X240.67883130896251 Y34.0634183261513 E270.39832
G1 X267.3812540983659 Y39.07769358901695 E272.02355
G1 X255.4 Y50.4 E273.08447
G0 F10800 X254.8 Y50.4
G0 X254.2 Y49.2
;TYPE:WALL-INNER
G1 F1200 X227.8 Y49.2 E274.57427
G1 X227.8 Y32.8 E275.49974
G1 X266.117801716277 Y39.14753883482655 E276.98954
G1 X262.0543673564819 Y53.67661092181683 E277.91502
G1 F900 E275.91502
G1 F180 Z4.3
G0 F10800 X253.659 Y45.311 Z4.3
;TYPE:FILL
G1 F180 Z2.8
G1 F900 E277.9934
G1 F2100 X250.31 Y48.66 E278.26067
G1 X250.098 Y48.872
G1 F900 E276.26067
G1 F180 Z4.3
G0 F10800 X246.916 Y48.66 Z4.3
G1 F180 Z2.8
G1 F900 E278.33905
G1 F2100 X253.659 Y41.917 E278.87718
G1 X254.0160276233642 Y42.795926478563
G1 F900 E276.87718
G1 F180 Z4.3
G0 F10800 X253.659 Y38.523 Z4.3
G1 F180 Z2.8
G1 F900 E278.95556
G1 F2100 X243.521 Y48.66 E279.7646
G1 X243.309 Y48.872
G1 F900 E277.7646
G1 F180 Z4.3
G0 F10800 X240.127 Y48.66 Z4.3
G1 F180 Z2.8
G1 F900 E279.84297
G1 F2100 X253.659 Y35.129 E280.92287
G1 X273.19427821742767 Y50.740692713318055
G0 F10800 X252.053 Y33.34
G1 F2100 X236.733 Y48.66 E282.14551
G1 X254.93768257731864 Y52.77054347765613
G1 F900 E280.14551
G1 F180 Z4.3
G0 F10800 X233.339 Y48.66 Z4.3
G1 F180 Z2.8
G1 F900 E282.22389
G1 F2100 X248.659 Y33.34 E283.44652
G1 X248.871 Y33.128
G1 F900 E281.44652
G1 F180 Z4.3
G0 F10800 X245.265 Y33.34 Z4.3
G1 F180 Z2.8
G1 F900 E283.5249
G1 F2100 X229.945 Y48.66 E284.74753
G1 X235.01264653686079 Y66.46900890126079
G0 F10800 X228.338 Y46.872
G1 F2100 X241.871 Y33.34 E285.82751
G1 X242.083 Y33.128
G1 F900 E283.82751
G1 F180 Z4.3
G0 F10800 X238.477 Y33.34 Z4.3
G1 F180 Z2.8
G1 F900 E285.90589
G1 F2100 X228.338 Y43.478 E286.71501
G1 X247.85635957213688 Y54.117398939487046
G1 F900 E284.71501
G1 F180 Z4.3
G0 F10800 X228.338 Y40.084 Z4.3
G1 F180 Z2.8
G1 F900 E286.79339
G1 F2100 X235.083 Y33.34 E287.33164
G1 X253.75052419009143 Y43.803298091851865
G1 F900 E285.33164
G1 F180 Z4.3
G0 F10800 X231.689 Y33.34 Z4.3
G1 F180 Z2.8
G1 F900 E287.41002
G1 F2100 X228.338 Y36.69 E287.67741
G1 X242.2508090012139 Y49.97040033889069
G1 F900 E285.67741
G1 F180 Z4.3
;MESH:NONMESH
G0 F10800 X255.4 Y50.4 Z4.3
;TIME_ELAPSED:251.099506
G0 X0 Y200 F10800
G4 P5000
;TIME_ELAPSED:878.345252
G1 F900 E819.18021
G0 X0 Y200 F10800
M140 S0
M107
M400                                      ; wait for moves to finish
M140 S50.0 ; start bed cooling
M104 S0                                   ; disable hotend
M107                                      ; disable fans
G91                                       ; relative positioning
G1 E-1 F300                               ; filament retraction to release pressure
G1 Z20 E-5 X-20 Y-20 F3000                ; lift up and retract even more filament
G1 E6                                     ; re-prime extruder
M117 Cooling please wait                  ; progress indicator message on LCD
G90                                       ; absolute positioning
G1 Y0 F3000                               ; move to cooling position
M190 R50.0 ; wait for bed to cool down to removal temp
G1 Y280 F3000                             ; present finished print
M140 S50.0; keep temperature or cool downs
M77                                          ; stop GLCD timer
M84                                       ; disable steppers
G90                                       ; absolute positioning
M117 Print Complete.                      ; print complete message


M82 ;absolute extrusion mode
M104 S0
;End of Gcode