print("The python app is Runnning")

from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/health', methods=['GET'])
def health_check():
    return jsonify({'result': 'Healthy', 'error': False})

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
