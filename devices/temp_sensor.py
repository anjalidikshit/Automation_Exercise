import time
import random
import logging

logging.basicConfig(filename='../logs/device_logs.txt', level=logging.INFO, format='%(asctime)s - %(message)s')

class TempSensor:
    def __init__(self, name, min_temp=15, max_temp=30):
        self.name = name
        self.min_temp = min_temp
        self.max_temp = max_temp

    def read_temp(self):
        temp = round(random.uniform(self.min_temp, self.max_temp), 2)
        logging.info(f"{self.name} temperature reading: {temp} °C")
        return temp
