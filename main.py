from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello, World! Welcome to your Flask app 1."

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000, debug=False)

