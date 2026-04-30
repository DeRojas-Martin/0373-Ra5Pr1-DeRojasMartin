<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>

<catalog>
<xsl:for-each select="biblioteca/llibre">
<obra>
<nom><xsl:value-of select="titol"/></nom>
<escriptor><xsl:value-of select="autor"/></escriptor>
</obra>
</xsl:for-each>
</catalog>

<pre>
<xsl:for-each select="biblioteca/llibre">
<xsl:value-of select="titol"/> - <xsl:value-of select="autor"/> - <xsl:value-of select="any"/>
</xsl:for-each>
</pre>

<ul>
<xsl:for-each select="biblioteca/llibre">
<li class="{@estat}">
<xsl:value-of select="titol"/>
</li>
</xsl:for-each>
</ul>

<p>Total llibres: <xsl:value-of select="count(biblioteca/llibre)"/></p>

<p>Preu mitjà: ampliació</p>

</body>
</html>
</xsl:template>

</xsl:stylesheet>