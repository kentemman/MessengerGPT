#!/bin/bash

# Update Ubuntu

apt update

#Download files

wget https://raw.githubusercontent.com/Kentemman/MessengerGPT/main/app.py

wget https://raw.githubusercontent.com/Kentemman/MessengerGPT/main/requirements.txt

# Install pip

apt install python3-pip

# Install dependencies from requirements.txt

sudo pip install -r requirements.txt

# Prompt user to enter OpenAI API key

echo "Please enter your OpenAI API key:"

read openai_api_key

# Replace OPEN_AI_API value in app.py with new value

export OPEN_AI_API=$open_ai_api

printenv

# Prompt user to enter Facebook Page Access Token

echo "Please enter your Facebook Page Access Token:"

read page_token

# Replace PAGE_TOKEN value in app.py with new value

export PAGE_TOKEN=$page_token

printenv

# Print environment variables

echo "OPEN_AI_API: $OPEN_AI_API"

echo "PAGE_TOKEN: $PAGE_TOKEN"

#ngrok
ngrok

# Run app.py

python3 app.py
