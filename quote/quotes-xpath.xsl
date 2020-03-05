<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="text" encoding="UTF-8" />
 
  <xsl:template match="*">
 
    <!-- Select textarea who's name is 123'_a -->
    <xsl:for-each select="//textarea[@name=concat('123', &quot;'&quot;, '_a')]">
      <xsl:text>Found </xsl:text>
      <xsl:value-of select="."/>
      <xsl:text>&#xa;&#xa;</xsl:text> <!-- &#xa; means line feed, newline -->
    </xsl:for-each>
 
    <!-- Select textarea who's name is 123'_"_a -->
    <xsl:for-each select="//textarea[@name=concat('123', &quot;'&quot;, '_', '&quot;', '_a')]">
      <xsl:text>Found </xsl:text>
      <xsl:value-of select="."/>
      <xsl:text>&#xa;&#xa;</xsl:text>
    </xsl:for-each>
    
  </xsl:template>
  
</xsl:stylesheet>