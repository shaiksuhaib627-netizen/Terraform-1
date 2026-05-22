from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({
        "message": "Flask Backend Running Successfully!",
        "port": 5000,
        "status": "success"
    })

@app.route('/health')
def health():
    return jsonify({
        "status": "healthy"
    })

@app.route('/users')
def users():
    users_list = [
        {"id": 1, "name": "Pavan"},
        {"id": 2, "name": "Rahul"},
        {"id": 3, "name": "Kiran"}
    ]

    return jsonify(users_list)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)