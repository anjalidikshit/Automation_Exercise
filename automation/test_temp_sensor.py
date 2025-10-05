import sys, os
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from devices.temp_sensor import TempSensor

def test_temp_range():
    sensor = TempSensor("Bedroom")
    for _ in range(10):
        temp = sensor.read_temp()
        assert 15 <= temp <= 30
