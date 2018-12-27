var http = require 'http'
var path = require 'path'
var fs = require 'fs'
var express = require 'express'

import {App} from '../src/app'
import Router from 'imba-router'

var app = express()

app.use('/static', express.static(path.resolve("{__dirname}", "../dist")))

app.get(/.*/) do |req,res|
	var path = req:path
	var router = Router.new(url: path)
	var node = <html>
		<head>
			<meta charset="utf-8">
			<meta http-equiv="x-ua-compatible" content="ie=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
			<title> "沃深基因科技"
			<link rel="stylesheet" href="/static/app.css">
			<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.4.0.js">
		<body>
			<script src="/static/app.js">


	console.log "onready", path

	node.router.onReady do
		res.send node.toString

var server = http.createServer
server.on('request', app)

let port = process:env.PORT or 8000
server.listen(port) do |err,res|
	console.log "server connected at :{port}"
	self