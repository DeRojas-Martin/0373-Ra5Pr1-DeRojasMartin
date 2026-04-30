<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>

<ul>
<xsl:for-each select="biblioteca/llibre[@estat='disponible']">
<li><xsl:value-of select="titol"/></li>
</xsl:for-each>
</ul>

<ul>
<xsl:for-each select="biblioteca/llibre[preu &gt; 12]">
<li><xsl:value-of select="titol"/></li>
</xsl:for-each>
</ul>

<ul>
<xsl:for-each select="biblioteca/llibre">
<li>
<xsl:value-of select="titol"/>
<xsl:if test="any &lt; 1980"> - Llibre antic</xsl:if>
</li>
</xsl:for-each>
</ul>

<ul>
<xsl:for-each select="biblioteca/llibre">
<li>
<xsl:value-of select="titol"/> -
<xsl:choose>
<xsl:when test="@estat='prestat'">En préstec</xsl:when>
<xsl:otherwise>Disponible</xsl:otherwise>
</xsl:choose>
</li>
</xsl:for-each>
</ul>

<ul>
<xsl:for-each select="biblioteca/llibre[genere='fantasia' or genere='distopia']">
<li><xsl:value-of select="titol"/></li>
</xsl:for-each>
</ul>

</body>
</html>
</xsl:template>

</xsl:stylesheet>