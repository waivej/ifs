<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="../../system/currentversion/templates/system.xsl"/>
<xsl:output method="html" indent="yes"/>


<xsl:template name="ShowPage" match="/">

<xsl:for-each select="/ROOT/CHILDREN/OBJECT">
	<a href="{$ROOTDIR}{ID}" style="text-decoration: none; color: #000"><xsl:value-of select="UNIQUENAME"/></a><br/>
</xsl:for-each>

</xsl:template>

<xsl:template match="/">
	<xsl:call-template name="ShowFramework"/>
</xsl:template>

</xsl:stylesheet>

	