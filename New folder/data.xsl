<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/root">
		<html lang="en">
			<head>
				<title>xsl testing</title>
				<link rel="stylesheet" href="style.css"/>
				<script src="https://cdn.jsdelivr.net/npm/vue@2.6.14/dist/vue.js"></script>
				<script>
					<!-- let conversionArray = [<xsl:apply-templates select="user" mode="toArray"/>] -->
					console.log('conversionArray')
				</script>
			</head>
			<body>    
				<div id="app">
					<h1>this is a {{display}}</h1>
				</div>
				<section class="container">
					<ul class="items flex wrap">
						<xsl:apply-templates select="user" mode="address-list"/>
					</ul>
				</section>
				<script>
					const vueApp = new Vue({el: '#app',data: { display: 'vue instance test string'}})
				</script>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="user" mode="address-list">
		<xsl:apply-templates select="address" mode="address-record"/>
	</xsl:template>

	<xsl:template match="address" mode="address-record">
	<li class="item">
		<p>first:<xsl:value-of select="first"/></p>
		<p>second:<xsl:value-of select="second"/></p>
		<p>secret:<xsl:apply-templates match="secret" mode="secret-address"/></p>
	</li>
</xsl:template>
<xsl:template match="secret" mode="secret-address"></xsl:template>

<xsl:template match='user' mode="toArray">'<xsl:value-of select="first_name"/>'</xsl:template>

</xsl:stylesheet>
