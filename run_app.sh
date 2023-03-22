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

# Run app.py
python3 app.py
#!/bin/bash

# Update Ubuntu

sudo apt-get update

sudo apt-get upgrade

# Install pip

sudo apt-get install python3-pip

# Install dependencies from requirements.txt

sudo pip install -r requirements.txt

# Prompt user to enter OpenAI API key

echo "Please enter your OpenAI API key:"

read openai_api_key

# Set OPEN_AI_API environment variable

export OPEN_AI_API=$openai_api_key

# Prompt user to enter Facebook Page Access Token

echo "Please enter your Facebook Page Access Token:"

read page_token

# Set PAGE_TOKEN environment variable

export PAGE_TOKEN=$page_token

# Print environment variables

echo "OPEN_AI_API: $OPEN_AI_API"

echo "PAGE_TOKEN: $PAGE_TOKEN"

# Run app.py

python3 app.py
