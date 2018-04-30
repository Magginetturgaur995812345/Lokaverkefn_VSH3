from bottle import *
import os
import json

@route("/")
def index():
    return template("Lokaverkefni.tpl")

@route('/Myndir/<filename>')
def server_static(filename):
    return static_file(filename, root="./Myndir")

@error(404)
def error404(error):
    return 'Þetta er 404 villa'

run(host="0.0.0.0", port=os.environ.get("PORT"))



