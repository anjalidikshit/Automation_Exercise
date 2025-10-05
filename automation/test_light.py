import pytest
from devices.light_device import LightDevice

def test_light_initial_state():
    light = LightDevice("Living Room")
    assert light.get_state() == "OFF"

def test_light_turn_on():
    light = LightDevice("Living Room")
    light.turn_on()
    assert light.get_state() == "ON"

def test_light_toggle():
    light = LightDevice("Living Room")
    light.toggle()
    assert light.get_state() == "ON"
    light.toggle()
    assert light.get_state() == "OFF"
