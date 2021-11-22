<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/Workflow">
		<h1>Workflow %%FILE%%</h1>
		
		<h2>Alerts</h2>
		<table border="2">
			<tr>
				<th>API</th><th>Description</th><th>Protected</th><th>Recipients</th><th>Sender Type</th><th>Template</th>
			</tr>
			<xsl:for-each select="./alerts">
			<tr>
				<td><xsl:value-of select="fullName" /></td>
				<td><xsl:value-of select="description" /></td>
				<td><xsl:choose><xsl:when test="not(protected) or protected != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
				<td>
					<xsl:for-each select="./recipients">
						<xsl:value-of select="recipient" /> (<xsl:value-of select="type" />)<br />
					</xsl:for-each>
				</td>
				<td><xsl:value-of select="senderType" /></td>
				<td><xsl:value-of select="template" /></td>
			</tr>
			</xsl:for-each>
		</table>

		<h2>Field Updates</h2>
		<table border="2">
			<tr>
				<th>Label</th><th>API</th><th>Description</th><th>Field</th><th>Notify Assignee</th><th>Operation</th><th>Protected</th>
			</tr>
			<xsl:for-each select="./fieldUpdates">
			<tr>
				<td><xsl:value-of select="name" /></td>
				<td><xsl:value-of select="fullName" /></td>
				<td><xsl:value-of select="description" /></td>
				<td><xsl:value-of select="field" /></td>
				<td><xsl:choose><xsl:when test="not(notifyAssignee) or notifyAssignee != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
				<td><xsl:value-of select="operation" /></td>
				<td><xsl:choose><xsl:when test="not(protected) or protected != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
			</tr>
			</xsl:for-each>
		</table>

		<h2>Rules</h2>
		<table border="2">
			<tr>
				<th>API</th><th>Description</th><th>Formula or Criteria</th><th>Trigger Type</th><th>Actions</th><th>Time trigger</th><th>Active</th>
			</tr>
			<xsl:for-each select="./rules">
			<tr>
				<td><xsl:value-of select="fullName" /></td>
				<td><xsl:value-of select="description" /></td>
				<td>
					<xsl:value-of select="formula" />
					<xsl:for-each select="./criteriaItems">
						<xsl:value-of select="field" /> <xsl:value-of select="operation" /> <xsl:value-of select="value" /> <br />
					</xsl:for-each>
				</td>
				<td><xsl:value-of select="triggerType" /></td>
				<td>
					<ul>
					<xsl:for-each select="./actions"> 
						<li><xsl:value-of select="name" /> (<xsl:value-of select="type" />)</li>
					</xsl:for-each>
					</ul>
				</td>
				<td>
					<xsl:for-each select="./workflowTimeTriggers"> 
						<xsl:value-of select="timeLength" /> <xsl:value-of select="workflowTimeTriggerUnit" /><br />
						<ul>
						<xsl:for-each select="./actions"> 
							<li><xsl:value-of select="name" /> (<xsl:value-of select="type" />)</li>
						</xsl:for-each>
						</ul>
					</xsl:for-each>
				</td>
				<td><xsl:choose><xsl:when test="not(active) or active != 'true'">false</xsl:when><xsl:otherwise>true</xsl:otherwise></xsl:choose></td>
			</tr>
			</xsl:for-each>
		</table>

	</xsl:template>
</xsl:stylesheet>