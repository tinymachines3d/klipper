#!/bin/sh
now=$(date +"%F-%H_%M_%S")
# TEST_RESONANCES AXIS=X
# TEST_RESONANCES AXIS=Y

echo processing x-axis
/home/biqu/klipper/scripts/calibrate_shaper.py /tmp/calibration_data_x_*.csv -o /home/biqu/printer_data/config/elements/input_shaper_results/shaper_calibrate_x-${now}.png

echo processing y-axis
/home/biqu/klipper/scripts/calibrate_shaper.py /tmp/resonances_y_*.csv -o /home/biqu/printer_data/config/elements/input_shaper_results/shaper_calibrate_y-${now}.png

# TEST_RESONANCES AXIS=1,1 OUTPUT=raw_data
# TEST_RESONANCES AXIS=1,-1 OUTPUT=raw_data
# ~/klipper/scripts/graph_accelerometer.py -c /tmp/raw_data_axis*.csv -o /tmp/resonances.png
mv /tmp/resonances_*.csv /home/biqu/printer_data/config/elements/input_shaper_results

