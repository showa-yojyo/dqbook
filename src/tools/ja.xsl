<?xml version="1.0" encoding="UTF-8"?>
<!-- $Id: $ -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:param name="local.l10n.xml" select="document('')"/>
<l:i18n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0">
  <l:l10n language="ja">
    <l:gentext key="Copyright" text="Copyright"/>
    <l:gentext key="copyright" text="copyright"/>

    <l:gentext key="Index" text="索引"/>
    <l:gentext key="index" text="索引"/>
    <l:gentext key="index symbols" text="記号"/>

    <l:context name="xref">
      <l:template name="appendix"   text="付録 %t"/>
      <l:template name="sect1"      text="%tの節"/>
      <l:template name="sect2"      text="%tの項"/>
      <l:template name="sect3"      text="%tの項"/>
      <l:template name="sect4"      text="%tの項"/>
      <l:template name="sect5"      text="%tの項"/>
      <l:template name="section"    text="%tの項"/>
      <l:template name="simplesect" text="%t"/>
    </l:context>
    <l:context name="xref-number-and-title">
      <l:template name="appendix"   text="付録 %n %t"/>
      <l:template name="chapter"    text="第 %n 章 %t"/>
      <l:template name="part"       text="第 %n 部 %t"/>
      <l:template name="sect1"      text="%n 節 %t"/>
      <l:template name="sect2"      text="%n %t"/>
      <l:template name="sect3"      text="%n %t"/>
      <l:template name="sect4"      text="%n %t"/>
      <l:template name="sect5"      text="%n %t"/>
      <l:template name="section"    text="%n %t"/>
      <l:template name="simplesect" text="%t"/>
    </l:context>

    <l:context name="glossary">
      <l:template name="see" text="→ %t"/>
      <l:template name="seealso" text="→ %t"/>
   </l:context>
  </l:l10n>
</l:i18n>
</xsl:stylesheet>
