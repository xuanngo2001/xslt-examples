<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="text" encoding="UTF-8" />
 
  <xsl:template match="*">
 
    <xsl:variable name="aString">Translate():___'___'__"___"__&#xa;</xsl:variable>
    <xsl:variable name="quote">'</xsl:variable>
 
    <!-- Replace ' with V. -->
    <xsl:value-of select="translate($aString, $quote, 'V')"/> 
    
        <!-- Display text if $aString contains '. -->
        <xsl:if test="contains($aString, $quote)">
          <xsl:text>Found ' in contains().&#xa;&#xa;</xsl:text>
        </xsl:if>
 
    <!-- Replace double quotes with V. -->
    <xsl:value-of select='translate($aString, "&apos;", "A")'/>
 
        <!-- Display text if $aString contains ". -->
        <xsl:if test='contains($aString, "&apos;")'>
          <xsl:text>Use quote between quotes: Used in contains()&#xa;&#xa;</xsl:text>
        </xsl:if>
 
    <!-- Use &quot; instead of $quote variable. -->
    <xsl:value-of select="translate($aString, &quot;'&quot;, 'D')"/>
 
        <xsl:if test="contains($aString, &quot;'&quot;)">
          <xsl:text>Use &amp;quot; instead of $quote in contains()&#xa;&#xa;</xsl:text>
        </xsl:if>
    
  </xsl:template>
</xsl:stylesheet>