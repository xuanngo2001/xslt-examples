<?xml version="1.0" encoding="UTF-8"?>
<!--
Below are examples showing how to handle apostrophe and quote in XSLT
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="text" encoding="UTF-8" />
 
  <xsl:template match="*">
 
    <!-- Examples of how to handle apostrophe and quote in XPath -->
    <!-- ******************************************************* -->
    <!-- Searching for 123'_a -->
    <xsl:for-each select="//textarea[@name=concat('123', &quot;'&quot;, '_a')]">
      <xsl:text>Found </xsl:text>
      <xsl:value-of select="."/>
      <xsl:text>&#xa;&#xa;</xsl:text> <!-- &#xa; means line feed, newline -->
    </xsl:for-each>
 
    <!-- Searching for 123'_"_a -->
    <xsl:for-each select="//textarea[@name=concat('123', &quot;'&quot;, '_', '&quot;', '_a')]">
      <xsl:text>Found </xsl:text>
      <xsl:value-of select="."/>
      <xsl:text>&#xa;&#xa;</xsl:text>
    </xsl:for-each>
 
    <!-- Examples of how to handle apostrophe and quote in XSL -->
    <!-- ***************************************************** -->
    <xsl:variable name="text">Translate():___'___'__"___"__&#xa;</xsl:variable>
 
    <!-- Embedded apostrophe in a variable and then use the variable -->
    <xsl:variable name="apos">'</xsl:variable>
    <xsl:value-of select="translate($text, $apos, 'V')"/> <!-- Replace ' with V. -->
 
    <xsl:if test="contains($text, $apos)">
      <xsl:text>Embedded apostrophe in a variable and then use it in contains()&#xa;&#xa;</xsl:text>
    </xsl:if>
 
    <!-- Use it between apostrophes -->
    <xsl:value-of select='translate($text, "&apos;", "A")'/>
 
    <xsl:if test='contains($text, "&apos;")'>
      <xsl:text>Use apostrophe between apostrophes: Used in contains()&#xa;&#xa;</xsl:text>
    </xsl:if>
 
    <!-- Use it between quotes -->
    <xsl:value-of select="translate($text, &quot;'&quot;, 'D')"/>
 
    <xsl:if test="contains($text, &quot;'&quot;)">
      <xsl:text>Use apostrophe between quotes: Used in contains()&#xa;&#xa;</xsl:text>
    </xsl:if>
  </xsl:template>
 
</xsl:stylesheet>