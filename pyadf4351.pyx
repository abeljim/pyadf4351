
cdef extern from "adf4351.h":
    void adf4350_out_altvoltage0_powerdown(int pwd)
    void adf4350_turn_on_wiring_pi()
    void adf4350_control(double freq, int ref_freq, int power)

def powerdown(pwd: 'int') -> None:
    adf4350_out_altvoltage0_powerdown(pwd)

def turn_on_wiring_pi():
    adf4350_turn_on_wiring_pi()

def control(freq: 'float', ref_freq: 'int'=-1, power: 'int'=-1) -> None:
    adf4350_control(freq, ref_freq, power)
