<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/SharingRules">
		<h1>Sharing Rules for %%FILE%%</h1>
		
		<table border="2">
			<tr>
				<th>Sharing API Name</th><th>Based</th><th>Role</th><th>RoleAndSubordinates</th><th>Group</th><th>User</th>
			</tr>
			<xsl:for-each select="./sharingCriteriaRules">
			<tr>
				<td><xsl:value-of select="fullName" /></td>
				<td>Criteria</td>
				<td><xsl:value-of select="sharedTo/role" /></td>
				<td><xsl:value-of select="sharedTo/roleAndSubordinates" /></td>
				<td><xsl:value-of select="sharedTo/group" /></td>
				<td><xsl:value-of select="sharedTo/user" /></td>
			</tr>
			</xsl:for-each>
			<xsl:for-each select="./sharingOwnerRules">
			<tr>
				<td><xsl:value-of select="fullName" /></td>
				<td>Owner</td>
				<td><xsl:value-of select="sharedTo/role" /></td>
				<td><xsl:value-of select="sharedTo/roleAndSubordinates" /></td>
				<td><xsl:value-of select="sharedTo/group" /></td>
				<td><xsl:value-of select="sharedTo/user" /></td>
			</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>

