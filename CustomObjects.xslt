<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/CustomObject">
		<xsl:for-each select="./fields">
			%%FILE%% - <xsl:value-of select="fullName" /> - <xsl:value-of select="type" /> (<xsl:value-of select="length" /><xsl:value-of select="referenceTo" />) - <xsl:choose><xsl:when test="not(required) or required != 'true'"></xsl:when><xsl:otherwise>Required</xsl:otherwise></xsl:choose>  <xsl:choose><xsl:when test="not(unique) or unique != 'true'"></xsl:when><xsl:otherwise>Unique</xsl:otherwise></xsl:choose> 
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>

