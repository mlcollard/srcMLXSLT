<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:src="http://www.srcML.org/srcML/src"
	xmlns:cpp="http://www.srcML.org/srcML/cpp"
	version="1.0">

<!--
	callgraph.xsl
-->
<xsl:output method="text"/>

<xsl:template match="/">
   <xsl:apply-templates select=".//src:function"/>
</xsl:template>

<xsl:template match="src:function">
    <xsl:variable name="function" select="src:name"/>
    <xsl:for-each select=".//src:call/src:name">
    <xsl:text>    </xsl:text><xsl:value-of select="$function"/>-<xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:value-of select="."/><xsl:text>
</xsl:text>
</xsl:for-each>
</xsl:template>

</xsl:stylesheet>
