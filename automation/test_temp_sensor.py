import pytest
from devices.temp_sensor import TempSensor

def test_temp_range():
    sensor = TempSensor("Bedroom")
    for _ in range(10):
        temp = sensor.read_temp()
        assert 15 <= temp <= 30
