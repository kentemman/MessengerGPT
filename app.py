import requests
import os, signal
from flask import Flask, request
import openai
app = Flask(__name__)

#This is API key for OpenAI
openai.api_key = 'OPEN_AI_API'
# This is page access token that you get from facebook developer console.
PAGE_ACCESS_TOKEN = 'PAGE_TOKEN'
# This is API key for facebook messenger.
API="https://graph.facebook.com/v13.0/me/messages?access_token="+PAGE_ACCESS_TOKEN


@app.route("/", methods=['POST'])
def fbwebhook():
    data = request.get_json()
    try:
        if data['entry'][0]['messaging'][0]['sender']['id']:
            message = data['entry'][0]['messaging'][0]['message']
            sender_id = data['entry'][0]['messaging'][0]['sender']['id']
            chat_gpt_input=message['text']
            print(chat_gpt_input)
            completion = openai.ChatCompletion.create(
                            model="gpt-3.5-turbo",
                            messages=[{"role": "user", "content": chat_gpt_input}])          
            chatbot_res = completion['choices'][0]['message']['content']
            print("ChatGPT Response=>",chatbot_res)
            response = {
                'recipient': {'id': sender_id},
                'message': {'text': chatbot_res}
            }
            requests.post(API, json=response)
    except Exception as e:
        print(e)
        pass
    return '200 OK HTTPS.'
if __name__ =='__main__':
    app.run()
