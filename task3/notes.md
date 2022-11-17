Question 1:
The vbdValue() shown on bottom left of the TFT display is the value for N which gives a tick period of 1 second. Why?

N = 28

The reason that we need to do this calibration is that the Verilator simulation of your design is NOT in real time. Every computer will work at different rate and therefore takes different amount of time to simulate one cycle of the clock signal.

Challenge:

