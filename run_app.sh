#!/bin/bash

# Update Ubuntu
sudo apt-get update

#Download files
wget https://raw.githubusercontent.com/Kentemman/MessengerGPT/main/app.py
wget https://raw.githubusercontent.com/Kentemman/MessengerGPT/main/requirements.txt


# Install pip
sudo apt-get install python3-pip

# Install dependencies from requirements.txt
sudo pip3 install -r requirements.txt

# Prompt user to enter OpenAI API key

echo "Please enter your OpenAI API key:"

read openai_api_key

# Prompt user to enter Facebook Page Access Token

echo "Please enter your Facebook Page Access Token:"

read page_token

# Replace OPEN_AI_API value in app.py with new value
sed -i "s/^export OPEN_AI_API=.*$/export OPEN_AI_API=$open_ai_api/" app.py

# Replace PAGE_TOKEN value in app.py with new value
sed -i "s/^export PAGE_TOKEN=.*$/export PAGE_TOKEN=$page_token/" app.py


# Print environment variables

echo "OPEN_AI_API: $OPEN_AI_API"

echo "PAGE_TOKEN: $PAGE_TOKEN"

# Run app.py

python3 app.py
