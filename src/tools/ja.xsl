<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:param name="local.l10n.xml" select="document('')"/>
<l:i18n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0">
  <l:l10n language="ja">
    <l:gentext key="Copyright" text="Copyright"/>
    <l:gentext key="copyright" text="copyright"/>

    <l:gentext key="index symbols" text="記号"/>

    <l:context name="title">
      <l:template name="appendix" text="付録 %n %t"/>
      <l:template name="chapter" text="第 %n 章 %t"/>
      <l:template name="equation" text="式 %n %t"/>
      <l:template name="example" text="例 %n %t"/>
      <l:template name="figure" text="図 %n %t"/>
      <l:template name="part" text="第 %n 部 %t"/>
      <l:template name="table" text="表 %n %t"/>
    </l:context>

    <l:context name="title-numbered">
      <l:template name="appendix" text="付録 %n %t"/>
      <l:template name="chapter" text="第 %n 章 %t"/>
      <l:template name="part" text="第 %n 部 %t"/>
    </l:context>

    <l:context name="xref-number">
      <l:template name="appendix" text="付録 %n"/>
      <l:template name="chapter" text="第 %n 章"/>
      <l:template name="equation" text="式 %n"/>
      <l:template name="example" text="例 %n"/>
      <l:template name="figure" text="図 %n"/>
      <l:template name="part" text="第 %n 部"/>
      <l:template name="table" text="表 %n"/>
    </l:context>

    <l:context name="xref-number-and-title">
      <l:template name="appendix" text="付録 %n %t"/>
      <l:template name="chapter" text="第 %n 章 %t"/>
      <l:template name="equation" text="式 %n %t"/>
      <l:template name="example" text="例 %n %t"/>
      <l:template name="figure" text="図 %n %t"/>
      <l:template name="part" text="第 %n 部 %t"/>
      <l:template name="sect1" text="%n %t"/>
      <l:template name="sect2" text="%n %t"/>
      <l:template name="sect3" text="%n %t"/>
      <l:template name="sect4" text="%n %t"/>
      <l:template name="sect5" text="%n %t"/>
      <l:template name="section" text="%n %t"/>
      <l:template name="simplesect" text="%t"/>
      <l:template name="table" text="表 %n %t"/>
    </l:context>

    <l:context name="glossary">
      <l:template name="see" text="→ %t"/>
      <l:template name="seealso" text="→ %t"/>
   </l:context>

   <l:context name="datetime">
     <l:template name="format" text="Y-m-d"/>
   </l:context>
  </l:l10n>
</l:i18n>
</xsl:stylesheet>
