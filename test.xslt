<xsl:stylesheet version="1.0"

  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:php="http://php.net/xsl"
  exclude-result-prefixes="php">

  <xsl:template match="/">
    <xsl:variable name="list" select="php:function('scandir', '.')" />
    <xsl:variable name="xml" select="php:function('implode', '&#10;', $list)" />
    <xsl:variable name="doc" select="php:function('simplexml_load_string', concat('&lt;files&gt;', $xml, '&lt;/files&gt;'))" />
    
    <xsl:for-each select="$doc/file">
      <xsl:value-of select="." />
      <xsl:text>&#10;</xsl:text>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
