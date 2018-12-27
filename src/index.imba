import Router from 'imba-router'
import App from './app'

var app = <App router=Router.new>

app.router.onReady do
	document:body:innerHTML = ''
	Imba.mount(app)

export app