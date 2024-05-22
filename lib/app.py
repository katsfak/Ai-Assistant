from flask import Flask, request, jsonify
from flask_cors import CORS
from g4f.client import Client

app = Flask(__name__)
CORS(app)

client = Client()

@app.route('/chat', methods=['POST'])
def chat():
    data = request.json
    user_message = data.get('message')

    if not user_message:
        return jsonify({'error': 'No message provided'}), 400

    response = client.chat.completions.create(
        model="gpt-4",
        messages=[{"role": "user", "content": user_message}],
    )

    bot_message = response.choices[0].message.content

    return jsonify({'bot_message': bot_message})

if __name__ == '__main__':
    app.run(debug=True)
