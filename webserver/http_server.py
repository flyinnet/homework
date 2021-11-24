from flask import Flask, request
import json

from script import my_script as my

app = Flask(__name__)

@app.route('/')
def index():
    return 'Flask is running!'

@app.route('/my-script',methods=['POST'])
def data():
    content = request.json
    if content is None or type(content) is not dict:
        return json.dumps({"code":400,"message": "Bad Request"}, ensure_ascii=False, indent=4, sort_keys=True), 400
    parameters = [
        {'name': 'word_1', 'type': str},
        {'name': 'word_2', 'type': str}
    ]
    for parameter in parameters:
        if parameter['name'] not in content or type(content[parameter['name']]) is not str:
            return json.dumps({"message": "Parameter '{}' incorrected".format(parameter['name'])}, sort_keys=True), 400
    return my.print_text(content['word_1'],content['word_2'])

if __name__ == '__main__':
    context = ('local.crt', 'local.key')#certificate and key files
    app.run(host='localhost', port='10000',debug=True)
