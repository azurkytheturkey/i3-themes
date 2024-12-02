#!/bin/bash
# Enable Bluetooth
bluetoothctl power on

# Wait a moment to ensure Bluetooth is ready
sleep 2

# Attempt to connect to the device
bluetoothctl connect B0:73:9C:A3:81:FE
