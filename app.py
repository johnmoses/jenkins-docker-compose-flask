# app.py
from flask import Flask, jsonify
app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({"message": "Welcome to My Flask API!!"})
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001, debug=True)