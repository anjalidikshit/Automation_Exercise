import time
import logging

logging.basicConfig(filename='../logs/device_logs.txt', level=logging.INFO, format='%(asctime)s - %(message)s')

class LightDevice:
    def __init__(self, name):
        self.name = name
        self.state = "OFF"

    def turn_on(self):
        self.state = "ON"
        logging.info(f"{self.name} turned ON")

    def turn_off(self):
        self.state = "OFF"
        logging.info(f"{self.name} turned OFF")

    def toggle(self):
        if self.state == "OFF":
            self.turn_on()
        else:
            self.turn_off()

    def get_state(self):
        return self.state
