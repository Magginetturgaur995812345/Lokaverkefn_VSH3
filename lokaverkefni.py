from bottle import *
import json

@route("/")
def index():
    return template("Lokaverkefni.tpl")

@route("/stadsetning/<name>")
def hus(name):
    return template("hus.tpl",name=name)

@route('/Myndir/<filename>')
def server_static(filename):
    return static_file(filename, root="./Myndir")

@get("/data")
def data():
    nafn = request.query.get("nafn")
    lykilord = request.query.get("lykilord")
    nafn = nafn.lower()
    lykilord = lykilord.lower()
    if nafn == "admin" and lykilord == "admin":
        response.set_cookie("admin","ok")
    else:
        return template("hus.tpl")

    if request.get_cookie("admin"):
        return template("admin_site.tpl")

@error(404)
def error404(error):
    return 'Þetta er 404 villa'

run(host="0.0.0.0", port=os.environ.get("PORT"))



