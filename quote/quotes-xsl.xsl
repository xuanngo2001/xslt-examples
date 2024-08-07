<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="text" encoding="UTF-8" />
 
  <xsl:template match="*">
    <!-- Sample string -->
    <xsl:variable name="aString">Translate():___'___'__"___"__&#xa;</xsl:variable>
    
    <!-- Assign ' to the $quote variable. -->
    <xsl:variable name="quote">'</xsl:variable>
 
    <!-- Replace single quote with V. -->
    <xsl:value-of select="translate($aString, $quote, 'V')"/> 
    
        <!-- Display text if $aString contains '. -->
        <xsl:if test="contains($aString, $quote)">
          <xsl:text>Found single quote(') with contains() function.&#xa;&#xa;</xsl:text>
        </xsl:if>
 
    <!-- Replace double quotes with V. -->
    <xsl:value-of select='translate($aString, "&apos;", "A")'/>
 
        <!-- Display text if $aString contains ". -->
        <xsl:if test='contains($aString, "&apos;")'>
          <xsl:text>Found double quote(") with contains() function.&#xa;&#xa;</xsl:text>
        </xsl:if>
 
    <!-- Use &quot; instead of $quote variable. -->
    <xsl:value-of select="translate($aString, &quot;'&quot;, 'D')"/>
 
        <xsl:if test="contains($aString, &quot;'&quot;)">
          <xsl:text>Use &amp;quot; instead of $quote.&#xa;</xsl:text>
          <xsl:text>  Found double quote(') with contains() function.&#xa;&#xa;</xsl:text>
        </xsl:if>
    
  </xsl:template>
</xsl:stylesheet>