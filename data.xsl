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
					console.log('conversionArray')
					let conversionArray = [<xsl:apply-templates select="user" mode="users"/>]
					console.log(conversionArray)
				</script>
			</head>
			<body>    
				<div id="app">
					<h1>this is a {{display}}</h1>
					<li v-for="user in newSet">{{user}}</li>
				</div>
				<xsl:apply-templates select="user" mode="users"/>
				<script>
					const vueApp = new Vue({el: '#app',data: { display: 'vue instance test string',newSet:conversionArray}})
				</script>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="user" mode="users">"<xsl:if test="position()=1"><xsl:text></xsl:text></xsl:if><xsl:value-of select="first_name"/>",</xsl:template>


</xsl:stylesheet>
