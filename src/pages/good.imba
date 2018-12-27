export tag Good
  def load params, next
    console.log params:id

  def render
    <self>
      <section.good>
        <h1.h2.good--title> "商品名称 #1"
        <img src="{require('../assets/images/logo.jpeg')}">