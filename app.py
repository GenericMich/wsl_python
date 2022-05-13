from flask import Flask, render_template, render_template_string
app = Flask(__name__)

@app.route('/')
def mainPage():
    return render_template('main.html')

@app.route('/<name>/<properties>')
def sidePage(name, properties):
    return render_template('side.html', name=name, property=properties)