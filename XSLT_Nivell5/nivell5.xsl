<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>

<ul>
<xsl:for-each select="biblioteca/llibre">
<xsl:sort select="any" data-type="number"/>
<li><xsl:value-of select="titol"/> - <xsl:value-of select="any"/></li>
</xsl:for-each>
</ul>

<ul>
<xsl:for-each select="biblioteca/llibre">
<xsl:sort select="titol"/>
<li><xsl:value-of select="titol"/></li>
</xsl:for-each>
</ul>

<ul>
<xsl:for-each select="biblioteca/llibre">
<xsl:sort select="preu" data-type="number" order="descending"/>
<li><xsl:value-of select="titol"/> - <xsl:value-of select="preu"/></li>
</xsl:for-each>
</ul>

<table border="1">
<tr>
<th>Títol</th>
<th>Any</th>
</tr>
<xsl:for-each select="biblioteca/llibre">
<xsl:sort select="any" data-type="number"/>
<tr>
<td><xsl:value-of select="titol"/></td>
<td><xsl:value-of select="any"/></td>
</tr>
</xsl:for-each>
</table>

<ul>
<xsl:for-each select="biblioteca/llibre[@estat='disponible']">
<xsl:sort select="titol"/>
<li><xsl:value-of select="titol"/></li>
</xsl:for-each>
</ul>

</body>
</html>
</xsl:template>

</xsl:stylesheet>