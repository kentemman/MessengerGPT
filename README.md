
# Facebook Messenger Chatbot with OpenAI GPT-3

This guide will walk you through the process of setting up a chatbot that uses the OpenAI GPT-3 model to respond to messages on Facebook Messenger.

## Install Using this Script 

If you prefer to use a script instead of running the command, you can download the `run_app.sh` script from this repository and run it using `./run_app.sh`.

```sh
wget https://raw.githubusercontent.com/Kentemman/MessengerGPT/main/run_app.sh 
chmod +x run_app.sh
./run_app.sh 
```

## Modified the `nano app.py` if the api is not working
- Change the OPEN_AI_API to your api
- Change the PAGE_TOKEN to your page token

## Prerequisites

Before getting started, you'll need:
- A Facebook Developer account
- A Facebook page for your chatbot
- An OpenAI API key
- Python 3 installed on your computer
- Flask and requests Python packages installed

## Step 1: Create a Facebook app and page

1. Go to the Facebook Developer portal and create a new app.
2. Follow the steps to set up your app, including adding a Messenger product and linking it to your Facebook page.
3. Generate a Page Access Token and keep it handy, you'll need it later.

## Step 2: Get an OpenAI API key
1. If you don't already have one, sign up for an account on the OpenAI website.
2. Generate an API key for the GPT-3 model, and keep it handy.

## Step 3: Set up the Flask server
1. Create a new directory for your project and navigate to it in the terminal.
2. Create a new Python file and call it `app.py`.
3. Paste the code from the original post into this file.
4. Replace the OpenAI API key and Facebook Page Access Token with your own tokens.
5. Install the Flask and requests Python packages by running pip install flask requests in the terminal.
6. Start the Flask server by running python app.py in the terminal.


## Step 4: Set up the Facebook webhook with ngrok
1. Open a new terminal tab or window and navigate to the directory where you installed ngrok.
2. Start ngrok by running the command: `./ngrok http 5000`
3. Note the "Forwarding" URL that is displayed in the ngrok console. This is the URL that you will use as your callback URL in the Facebook Developer portal.
4. Go back to your Facebook Developer portal and navigate to your app's Messenger settings.
5. Under the Webhooks section, click on the "Setup Webhooks" button.
6. Enter

## Step 5: Test the chatbot
1. Go to your Facebook page and send a message to your chatbot.
2. Check the console of your Flask server to see the 3. input message and the response from OpenAI GPT-3.
4. Check the Facebook Messenger conversation to see 5. the chatbot's response.

## Step 6: Deploy the chatbot
1. Once you're happy with the chatbot's functionality, you can deploy it to a server so that it can run 24/7.
2. There are many ways to deploy a Flask server, including using services like Heroku, AWS Elastic Beanstalk, or Google Cloud Run.
3. Follow the instructions for your chosen deployment method to upload your Flask app and run it on a server.


###


That's it! You now have a Facebook Messenger chatbot that uses OpenAI GPT-3 to generate responses. You can customize the chatbot's behavior by modifying the code in app.py.
