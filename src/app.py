from flask_cors import CORS
from flask import Flask, jsonify

app = Flask(__name__)
CORS(app)


@app.route('/')
def action():
    return jsonify({
        'label': 'VERSION 2'
    }), 200


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
