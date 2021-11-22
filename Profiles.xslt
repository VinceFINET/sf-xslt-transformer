<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/Profile">
		<h1>Profile %%FILE%%</h1>
		
		<h2>Applications</h2>
		<table border="2">
			<tr>
				<th>Application API Name</th><th>Default</th><th>Visible</th>
			</tr>
			<xsl:for-each select="./applicationVisibilities">
			<tr>
				<td><xsl:value-of select="application" /></td>
				<td><xsl:choose><xsl:when test="not(default) or default != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
				<td><xsl:choose><xsl:when test="not(visible) or visible != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
			</tr>
			</xsl:for-each>
		</table>

		<h2>Tabs</h2>
		<table border="2">
			<tr>
				<th>Tab API Name</th><th>Visibility</th>
			</tr>
			<xsl:for-each select="./tabVisibilities">
			<tr>
				<td><xsl:value-of select="tab" /></td>
				<td><xsl:value-of select="visibility" /></td>
			</tr>
			</xsl:for-each>
		</table>

		<h2>CRUD</h2>
		<table border="2">
			<tr>
				<th>Object API Name</th><th>Create</th><th>Read</th><th>Update</th><th>Delete</th><th>ReadAll</th><th>UpdateAll</th>
			</tr>
			<xsl:for-each select="./objectPermissions">
			<tr>
				<td><xsl:value-of select="object" /></td>
				<td><xsl:choose><xsl:when test="not(allowCreate) or allowCreate != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
				<td><xsl:choose><xsl:when test="not(allowRead) or allowRead != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
				<td><xsl:choose><xsl:when test="not(allowEdit) or allowEdit != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
				<td><xsl:choose><xsl:when test="not(allowDelete) or allowDelete != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
				<td><xsl:choose><xsl:when test="not(viewAllRecords) or viewAllRecords != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
				<td><xsl:choose><xsl:when test="not(modifyAllRecords) or modifyAllRecords != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
			</tr>
			</xsl:for-each>
		</table>

		<h2>Field level security</h2>
		<table border="2">
			<tr>
				<th>Field API Name</th><th>Readable</th><th>Editable</th>
			</tr>
			<xsl:for-each select="./fieldPermissions">
			<tr>
				<td><xsl:value-of select="field" /></td>
				<td><xsl:choose><xsl:when test="not(readable) or readable != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
				<td><xsl:choose><xsl:when test="not(editable) or editable != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
			</tr>
			</xsl:for-each>
		</table>

		<h2>Record Types</h2>
		<table border="2">
			<tr>
				<th>Record Type API Name</th><th>Visible</th><th>Default</th>
			</tr>
			<xsl:for-each select="./recordTypeVisibilities">
			<tr>
				<td><xsl:value-of select="recordType" /></td>
				<td><xsl:choose><xsl:when test="not(visible) or visible != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
				<td><xsl:choose><xsl:when test="not(default) or default != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
			</tr>
			</xsl:for-each>
		</table>

		<h2>Layouts</h2>
		<table border="2">
			<tr>
				<th>Layout API Name</th><th>Record Type API Name</th>
			</tr>
			<xsl:for-each select="./layoutAssignments">
			<tr>
				<td><xsl:value-of select="layout" /></td>
				<td><xsl:value-of select="recordType" /></td>
			</tr>
			</xsl:for-each>
		</table>

		<h2>Apex Classes</h2>
		<table border="2">
			<tr>
				<th>Class API Name</th><th>Enabled</th>
			</tr>
			<xsl:for-each select="./classAccesses">
			<tr>
				<td><xsl:value-of select="apexClass" /></td>
				<td><xsl:choose><xsl:when test="not(enabled) or enabled != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
			</tr>
			</xsl:for-each>
		</table>

		<h2>Visual Force Pages</h2>
		<table border="2">
			<tr>
				<th>Page API Name</th><th>Enabled</th>
			</tr>
			<xsl:for-each select="./pageAccesses">
			<tr>
				<td><xsl:value-of select="apexPage" /></td>
				<td><xsl:choose><xsl:when test="not(enabled) or enabled != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
			</tr>
			</xsl:for-each>
		</table>

		<h2>Permissions</h2>
		<table border="2">
			<tr>
				<th>Permission API Name</th><th>Enabled</th>
			</tr>
			<xsl:for-each select="./userPermissions">
			<tr>
				<td><xsl:value-of select="name" /></td>
				<td><xsl:choose><xsl:when test="not(enabled) or enabled != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
			</tr>
			</xsl:for-each>
		</table>

	</xsl:template>
</xsl:stylesheet>

