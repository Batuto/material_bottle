#! /usr/bin/env python3
# -*- coding: utf-8 -*-
import bottle

@bottle.route('/')
def root():
    return "Hola Mundo!"

@bottle.route('/static/<filename:path>', method='GET')
def static_f(filename):
    return bottle.static_file(
        filename, root='./static')



bottle.run(debug=True, reloader=True)
