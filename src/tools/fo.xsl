<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version='1.0'>
  <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/fo/docbook.xsl"/>

  <!-- 1. Admonitions -->
  <xsl:param name="admon.graphics" select="1" />
  <xsl:param name="admon.graphics.extension" select='".svg"' />
  <xsl:param name="admon.graphics.path" select="'image/docbook/'"/>
  <xsl:param name="admon.textlabel" select="0" />
  <xsl:attribute-set name="graphical.admonition.properties">
    <xsl:attribute name="border">0.5pt solid black</xsl:attribute>
    <xsl:attribute name="padding">0.1in</xsl:attribute>
  </xsl:attribute-set>

  <!-- 2. Callouts -->
  <xsl:param name="callout.graphics" select="1" />
  <xsl:param name="callout.graphics.extension" select="'.svg'" />
  <xsl:param name="callout.graphics.path" select="'image/docbook/callouts/'"/>
  <xsl:param name="callouts.extension" select="1" />

  <!-- 3. ToC/LoT/Index Generation -->
  <xsl:param name="generate.index" select="1" />
  <xsl:param name="toc.section.depth">3</xsl:param>
  <xsl:param name="toc.max.depth">3</xsl:param>
  <xsl:param name="generate.section.toc.level" select="0" />

  <!-- 4. Processor Extensions -->
  <xsl:param name="fop.extensions" select="0" />
  <xsl:param name="fop1.extensions" select="1"/>

  <!-- 5. Stylesheet Extensions -->
  <xsl:param name="tablecolumns.extension" select="1" />

  <!-- 6. Automatic labelling -->
  <xsl:param name="section.autolabel" select="1"/>
  <xsl:param name="chapter.autolabel" select="1" />
  <xsl:param name="section.label.includes.component.label" select="1"/>

  <!-- 7. XSLT Processing -->
  <!-- xsl:param name="rootid">tools</xsl:param -->

  <!-- 13. Lists -->
  <xsl:param name="variablelist.max.termlength">24</xsl:param>
  <xsl:param name="variablelist.term.separator"></xsl:param>
  <xsl:param name="variablelist.term.break.after">1</xsl:param>

  <!-- 16. Glossary -->
  <xsl:param name="glossterm.auto.link" select="1"></xsl:param>
  <xsl:param name="glossary.as.blocks" select="1"></xsl:param>
  <xsl:param name="glosslist.as.blocks" select="1"></xsl:param>
  <xsl:param name="glossary.sort" select="0"></xsl:param>

  <!-- 17. Miscellaneous -->
  <xsl:param name="double.sided" select="1"></xsl:param>
  <xsl:param name="variablelist.as.blocks" select="1" />
  <xsl:param name="ulink.show" select="0"></xsl:param>

  <!-- 18. Graphics -->
  <xsl:param name="ignore.image.scaling" select="0"></xsl:param>

  <!-- 19. Pagination and General Styles -->
  <xsl:param name="paper.type" select="'A4'"/>
  <xsl:param name="draft.mode" select="'no'"/>
  <xsl:param name="hyphenate">false</xsl:param>
  <xsl:param name="body.start.indent">0pt</xsl:param>

  <!-- 20. Font Families -->
  <xsl:param name="title.font.family" select="'MSGothic'"/>
  <xsl:param name="body.font.family" select="'MSGothic'"/>
  <xsl:param name="sans.font.family" select="'MSGothic'"/>
  <xsl:param name="monospace.font.family" select="'MSGothic'"/>

  <!-- 21. Property Sets -->
  <xsl:attribute-set name="sidebar.properties" use-attribute-sets="formal.object.properties">
    <xsl:attribute name="border-style">solid</xsl:attribute>
    <xsl:attribute name="border-width">.1mm</xsl:attribute>
    <xsl:attribute name="background-color">#EEEEEE</xsl:attribute>
  </xsl:attribute-set>
</xsl:stylesheet>
