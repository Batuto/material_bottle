#! /usr/bin/env python3
# -*- coding: utf-8 -*-
import bottle
import datetime


# app = bottle.Bottle()
oyentes = [('Juan','Perez', 99,'Se va pronto...', datetime.datetime.now())]

@bottle.get('/static/<filename:path>')
def statics(filename):
    return bottle.static_file(filename, root='./static/')

@bottle.get('/example/<path:path>')
def example(path):
    return path

@bottle.error(404)
def error404(error):
    bottle.response.status = 302
    bottle.response.set_header('Location', '/oyentes')
    # return "<h2>Página no encontrada</h2></br> %s" % (error)

@bottle.get('/')
def root():
    bottle.response.status = 302
    bottle.response.set_header('Location', '/static/fichero')

@bottle.get('/redirect')
def urlredirect():
    bottle.redirect('/static/fichero', code=307)

@bottle.get('/error')
def forcederror():
    bottle.response.status = 404
    bottle.response.set_header('Location', '/static/fichero')
    bottle.response.set_header('Server', 'A server example')

@bottle.get('/oyentes')
def fun_oyentes():
    return bottle.template('views/index.tpl', oyentes=oyentes)

@bottle.get('/nuevo')
def nuevo():
    return bottle.template('views/nuevooyente.tpl')

@bottle.post('/nuevo')
def crear_nuevo():
    formulario = bottle.request.forms
    oyentes.append((formulario.nombre,
                    formulario.apellido,
                    formulario.edad,
                    formulario.bio,
                    datetime.datetime.now()))
    bottle.response.status = 302
    bottle.response.set_header('Location', '/nuevo')

@bottle.get('/oyente<oid:int>')
def ver_oyente(oid):
    oyente = oyentes[oid]
    return bottle.template('views/oyente.tpl',
                           nombre=oyente[0],
                           apellido=oyente[1],
                           edad=oyente[2],
                           bio=oyente[3],
                           oid=oid,
                           regdatetime=oyente[4])

bottle.run(host="0.0.0.0", port=8080, reloader=True, debug=True)
