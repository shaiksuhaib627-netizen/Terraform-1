#!/bin/bash

yum update -y

# Install Python
yum install python3 -y

# Install NodeJS
curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
yum install nodejs -y

# --------------------------------
# Flask Application
# --------------------------------

mkdir -p /home/ec2-user/flask-app

cd /home/ec2-user/flask-app

cat <<EOF > app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Flask Backend Running on Port 5000"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
EOF

python3 -m pip install flask

nohup python3 app.py > flask.log 2>&1 &

# --------------------------------
# Express Application
# --------------------------------

mkdir -p /home/ec2-user/express-app

cd /home/ec2-user/express-app

cat <<EOF > server.js
const express = require('express')

const app = express()

app.get('/', (req, res) => {
    res.send('Express Frontend Running on Port 3000')
})

app.listen(3000, '0.0.0.0', () => {
    console.log('Express server started')
})
EOF

npm init -y

npm install express

nohup node server.js > express.log 2>&1 &