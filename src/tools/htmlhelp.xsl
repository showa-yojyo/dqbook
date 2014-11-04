<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/htmlhelp/htmlhelp.xsl"/>
  <xsl:import href="ja.xsl"/>

  <!-- 23. HTML Help -->
  <xsl:param name="htmlhelp.encoding" select="'Shift_JIS'"/>
  <xsl:param name="htmlhelp.autolabel" select="1"/>
  <xsl:param name="htmlhelp.chm" select="'dqbook.chm'"/>
  <xsl:param name="htmlhelp.hhp" select="'dqbook.hhp'"/>
  <xsl:param name="htmlhelp.hhc" select="'toc.hhc'"/>
  <xsl:param name="htmlhelp.hhk" select="'index.hhk'"/>
  <xsl:param name="htmlhelp.hhc.section.depth" select="5"/>
  <xsl:param name="htmlhelp.hhc.show.root" select="1"/>
  <xsl:param name="htmlhelp.title" select="'ドラクエ命'"/>
  <xsl:param name="htmlhelp.show.menu" select="1"/>
  <xsl:param name="htmlhelp.show.toolbar.text" select="0"/>
  <xsl:param name="htmlhelp.show.advanced.search" select="1"/>
  <xsl:param name="htmlhelp.button.hideshow" select="1"/>
  <xsl:param name="htmlhelp.button.back" select="1"/>
  <xsl:param name="htmlhelp.button.forward" select="1"/>
  <xsl:param name="htmlhelp.button.stop" select="0"/>
  <xsl:param name="htmlhelp.button.refresh" select="0"/>
  <xsl:param name="htmlhelp.button.home" select="1"/>
  <xsl:param name="htmlhelp.button.options" select="1"/>
  <xsl:param name="htmlhelp.button.print" select="1"/>
  <xsl:param name="htmlhelp.button.locate" select="1"/>
  <xsl:param name="htmlhelp.button.next" select="1"/>
  <xsl:param name="htmlhelp.button.previous" select="1"/> <!-- .prev? -->
  <xsl:param name="htmlhelp.button.zoom" select="1"/>
  <xsl:param name="htmlhelp.use.hhk" select="1"/>
  <xsl:param name="htmlhelp.htmlhelp.only" select="1"/>

  <!-- HTML options -->
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

  <!-- 8. XSLT Processing -->
  <xsl:param name="suppress.navigation" select="1"/>
  <xsl:param name="suppress.header.navigation" select="1"/>

  <!-- 21. Chunking -->
  <xsl:param name="chunker.output.encoding" select="'UTF-8'"/>
  <xsl:param name="chunker.output.indent" select="'yes'"/>
  <xsl:param name="use.id.as.filename" select="1"/>
  <xsl:param name="chunk.first.sections" select="1"/>
  <xsl:param name="chunk.fast" select="1"/>
  <xsl:param name="navig.graphics.extension" select="'.png'"/>

  <!-- REPLACING TEMPLATES -->
  <xsl:template match="command">
    <xsl:call-template name="inline.monoseq"/>
  </xsl:template>
</xsl:stylesheet>

