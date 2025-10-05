# IoT Simulator - Smart Home Automation Mock Project

## Description
Simulates IoT devices (lights and temperature sensors) and automates testing for functionality, connectivity, and logging.

## Features
- LightDevice: Turn ON/OFF lights, toggle state
- TempSensor: Generate random temperature readings
- Logging: Device events saved in logs/device_logs.txt
- Automation: Pytest unit tests for devices
- CI/CD: GitHub Actions workflow runs tests automatically

## How to Run
1. Install dependencies: `pip install -r requirements.txt`
2. Run simulation: `python scripts/run_simulation.py`
3. Run tests: `pytest automation/`
