<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/xhtml/chunk.xsl"/>
	<xsl:import href="xhtml-common.xsl"/>

	<!-- 8. XSLT Processing -->
	<!-- xsl:param name="rootid"></xsl:param -->

	<!-- 21. Chunking -->
	<xsl:param name="chunker.output.doctype-public" select="'-//W3C//DTD XHTML 1.0 Strict//EN'"/>
	<xsl:param name="chunker.output.doctype-system" select="'http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd'"/>
	<xsl:param name="chunker.output.encoding" select="'UTF-8'"/>
	<xsl:param name="chunker.output.indent" select="'yes'"/>
	<xsl:param name="use.id.as.filename" select="1"/>
	<xsl:param name="chunk.first.sections" select="1"/>
	<xsl:param name="chunk.fast" select="1"/>
	<xsl:param name="navig.graphics" select="1"/>
	<xsl:param name="navig.graphics.extension" select="'.png'"/>
	<xsl:param name="navig.graphics.path">image/docbook/</xsl:param>

	<!-- REPLACING TEMPLATES -->
	<xsl:include href="navigation.xsl" />
</xsl:stylesheet>
