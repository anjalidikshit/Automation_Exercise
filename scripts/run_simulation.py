import time
from devices.light_device import LightDevice
from devices.temp_sensor import TempSensor

def main():
    living_room_light = LightDevice("Living Room Light")
    bedroom_sensor = TempSensor("Bedroom Sensor")

    for _ in range(5):
        temp = bedroom_sensor.read_temp()
        if temp < 20:
            living_room_light.turn_on()
        else:
            living_room_light.turn_off()
        time.sleep(1)

if __name__ == "__main__":
    main()
