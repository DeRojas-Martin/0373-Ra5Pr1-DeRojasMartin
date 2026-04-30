<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>
<p><xsl:value-of select="biblioteca/llibre[1]/titol"/></p>
<p><xsl:value-of select="biblioteca/llibre[1]/titol"/> - <xsl:value-of select="biblioteca/llibre[1]/autor"/></p>
<p><xsl:value-of select="biblioteca/revista/@codi"/></p>
</body>
</html>
</xsl:template>

</xsl:stylesheet>