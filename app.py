#!flask/bin/python
from flask import Flask, jsonify, render_template
import random

import emojilibrary

app = Flask(__name__)


@app.route('/emojis/api/v.1.0/', methods=['GET'])
def get():
      return jsonify({'emoji': random.choice(emojilibrary.emojis)})

@app.route('/')
def index(context=None):
  context = {
    'title':"Ranmoji"
  }
  return render_template('index.tpl', data=context)

if __name__ == '__main__':
	app.run(debug=True)
