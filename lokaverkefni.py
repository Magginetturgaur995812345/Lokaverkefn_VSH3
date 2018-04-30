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
#-------------------------------------------------------------- 
"""@route("/setcookie")
def index():
    response.set_cookie("Kaka","nammikaka")
    return "búa til köku"

@route("/deletecookie")
def index():
    response.set_cookie("Kaka","", expires=0)
    return "Kakan er farin"
"""



