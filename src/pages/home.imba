export tag Home
	def scrollTop
		window.scrollTo
			top: this.dom:children[1]:offsetTop,
			left: 0,
			behavior: 'smooth'

	def render
		<self>
			<header>
				<img src="{require('../assets/images/logo.jpeg')}">
				<div.title > "沃深基因"
				<button.get-started.button.button-primary-outlined.button-large :click=(do scrollTop)> "了解更多"
				<div css:marginTop="30px">
					<button.button-primary-text.button-small> "产品及服务"
					<button.button-primary-text.button-small> "服务流程"
					<button.button-primary-text.button-small> "示例报告"
					<button.button-primary-text.button-small> "关于我们"
				<a.scroll-down :click=(do scrollTop)>
			<section css:minHeight="100vh">
				<h1.h2> "产品及服务"
				<table>
					<thead>
						<tr>
							<th> "产品信息"
					<tbody>
						<tr route-to="/good/1">
							<td>
								<img css:width="100px" css:height="100px" src="{require('../assets/images/logo.jpeg')}">
								<p>
									<strong> "商品名称 #1"
								<p> "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
								<a.more-info>
						<tr route-to="/good/2">
							<td>
								<img css:width="100px" css:height="100px" src="{require('../assets/images/logo.jpeg')}">
								<p>
									<strong> "商品名称 #2"
								<p> "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
								<a.more-info>
						<tr route-to="/good/3">
							<td>
								<img css:width="100px" css:height="100px" src="{require('../assets/images/logo.jpeg')}">
								<p>
									<strong> "商品名称 #3"
								<p> "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
								<a.more-info>
			<section css:minHeight="100vh">
				<h1.h2> "服务流程"
				<div.stepper>
					<div.step.clear-fix>
						<p.step-number> "1"
						<p.step-title> "选择并购买服务"
						<p> "选择您需要的服务并购买。"
						<button.button-primary-outlined.button-small.float-right> "了解详情"
					<div.step.clear-fix>
						<p.step-number> "2"
						<p.step-title> "采样并寄回样本"
						<p> "您在收到样本采集工具之后，按所附使用说明，采集所需检测样本，并按照要求寄回样本。同时请在微信端绑定样本。"
						<button.button-primary-outlined.button-small.float-right> "了解详情"
					<div.step.clear-fix>
						<p.step-number> "3"
						<p.step-title> "检测并获取结果"
						<p> "我们在收到您寄出的检测样本之后, 即开始对样本进行检测并生成检测报告, 检测报告包括纸质报告和电子报告, 电子报告请在微信端进行查看, 纸质报告会邮寄到您的地址。"
						<button.button-primary-outlined.button-small.float-right> "了解详情"
