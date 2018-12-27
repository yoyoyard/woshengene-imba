require 'imba-router'

import { Home } from './pages/home'
import { Profile } from './pages/profile'
import { Shop } from './pages/shop'
import { Checkout } from './pages/checkout'
import { Order } from './pages/order'
import { Good } from './pages/good'

export tag App
	def setup
		if router.path == '/'
			router.go '/home'

	def render
		<self>
			<Home route='/home'>
			<Profile route='/profile'>
			<Shop route='/shop'>
			<Order route='/order'>
			<Checkout route='/checkout'>
			<Good route='/good/:id'>
