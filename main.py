#!flask/bin/python
from flask import Flask, jsonify, render_template
from flask_cors import CORS, cross_origin
import random

import emojilibrary

application = Flask(__name__)


@application.route('/emojis/api/v.1.0/', methods=['GET'])
@cross_origin()
def get():
      return jsonify({'emoji': random.choice(emojilibrary.emojis)})

@application.route('/')
def index(context=None):
  context = {
    'title':"Ranmoji"
  }
  return render_template('index.tpl', data=context)

if __name__ == '__main__':
	application.run(debug=True)
