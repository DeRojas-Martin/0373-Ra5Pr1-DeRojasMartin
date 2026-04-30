<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>
<h1>Biblioteca</h1>

<h2>Llibres</h2>
<ul>
<xsl:apply-templates select="biblioteca/llibre"/>
</ul>

<h2>Revistes</h2>
<ul>
<xsl:apply-templates select="biblioteca/revista"/>
</ul>

</body>
</html>
</xsl:template>

<xsl:template match="llibre">
<li><xsl:value-of select="titol"/></li>
</xsl:template>

<xsl:template match="revista">
<li><xsl:value-of select="titol"/></li>
</xsl:template>

</xsl:stylesheet>