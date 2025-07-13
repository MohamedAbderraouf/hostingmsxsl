<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:php="http://php.net/xsl">

  <xsl:template match="/">
    <pre>
      <xsl:value-of select="php:function('print_r', php:function('scandir', '.'), true())" />
    </pre>
  </xsl:template>

</xsl:stylesheet>
