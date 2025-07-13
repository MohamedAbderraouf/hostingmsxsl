<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:php="http://php.net/xsl">
  <xsl:template match="/">
    <xsl:for-each select="php:function('scandir', '.')">
      <xsl:value-of select="." />
      <xsl:text>&#10;</xsl:text> <!-- Line break -->
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
