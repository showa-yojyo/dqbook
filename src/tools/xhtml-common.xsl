<?xml version="1.0" encoding="UTF-8"?>
<!-- $Id: xhtml-common.xsl 165 2007-10-27 14:42:44Z work $ -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:import href="ja.xsl"/>
	<xsl:output method="xml" encoding="UTF-8" indent="yes" />

	<!-- 1. Admonitions -->
	<xsl:param name="admon.graphics.path" select="'image/docbook/'"/>
	<xsl:param name="admon.graphics" select="1"/>

	<!-- 2. Callouts -->
	<xsl:param name="callout.graphics.extension">.png</xsl:param>
	<xsl:param name="callout.graphics.path" select="'image/docbook/callouts/'"/>

	<!-- 4. ToC/LoT/Index Generation -->
	<xsl:param name="toc.section.depth" select="3"/> <!-- default: 2 -->
	<xsl:param name="toc.max.depth" select="3"/>
	<xsl:param name="generate.toc">
		appendix  nop
		book      toc,title
		chapter   toc
		part      toc
		preface   nop
		section   toc
	</xsl:param>
	<xsl:param name="generate.section.toc.level" select="1"/> <!-- sect1 only -->

	<!-- 6. Automatic labeling -->
	<xsl:param name="section.autolabel" select="1"/>
	<xsl:param name="section.label.includes.component.label" select="1"/>

	<!-- 7. HTML -->
	<xsl:param name="html.stylesheet">dqbook.css</xsl:param>
</xsl:stylesheet>
