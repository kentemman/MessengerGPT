#!/bin/bash

# Update Ubuntu
sudo apt-get update
sudo apt-get upgrade

# Install pip
sudo apt-get install python3-pip

# Install dependencies from requirements.txt
sudo pip3 install -r requirements.txt

# Run app.py
python3 app.py
