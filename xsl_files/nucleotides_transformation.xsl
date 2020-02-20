<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"  encoding="UTF-8" />
<xsl:template match="/">

	<xsl:for-each select="protdataset"> 
		<xsl:for-each select="protein">
			<xsl:text>></xsl:text>
			<xsl:value-of select="nazwa"/><xsl:text>|</xsl:text>
			<xsl:value-of select="ID" /><xsl:text>|</xsl:text>
			<xsl:value-of select="gene" /><xsl:text>|</xsl:text>
			<xsl:value-of select="organism" />
		</xsl:for-each>
		
		<xsl:for-each select="sequence" >
			<xsl:value-of select="nucleotide" /> 
		</xsl:for-each>
		
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>