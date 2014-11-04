<?xml version="1.0" encoding="utf-8"?>
<!-- $Id: $ -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" encoding="utf-8" indent="yes" />

<!-- ヘッダとフッタ -->
<xsl:template name="back">
   <p><a href="index.html">戻る</a></p>
</xsl:template>

<!--
  log ::= (logentry)+
  -->
<xsl:template match="log">
  <html>
    <head>
      <meta http-equiv="Content-style-type" content="text/css"/>
      <meta name="author" content="showa_yojyo@hotmail.com"/>
      <link rel="index" type="text/html" title="Index" href="http://www.geocities.jp/showa_yojyo/dq/index.html"/>
      <link rel="stylesheet" type="text/css" href="changelog.css"/>
      <title>Changelog</title>
    </head>
    <body>
    <xsl:call-template name="back"/>
    <div title="changelog">
    <h1 id="changelog">Changelog</h1>
    <xsl:apply-templates/>
    </div>
    <xsl:call-template name="back"/>
    </body>
  </html>
</xsl:template>

<!--
  logentry ::= (author,date,paths,msg?)
  -->
<xsl:template match="logentry">
  <xsl:variable name="logdate" select="substring-before(./date,'.')"/>

  <div class="change" title="r{@revision}">
    <div class="revinfo">
    <b>Rev. <xsl:value-of select="@revision"/></b>
    <xsl:text> </xsl:text>
    <xsl:value-of select="translate($logdate, 'T', ' ')"/>
    </div>
    <xsl:apply-templates select="msg"/>
    <xsl:apply-templates select="paths"/>
  </div>
</xsl:template>

<!--
  path ::= (path)*
  -->
<xsl:template match="paths">
  <div class="changelist">
  <ul>
    <xsl:for-each select="./path">
      <xsl:sort/>
      <li><xsl:apply-templates/></li>
    </xsl:for-each>
  </ul>
  </div>
</xsl:template>

<!--
  msg ::= #PCDATA
  -->
<xsl:template match="msg">
  <pre class="loginfo"><xsl:apply-templates/></pre>
</xsl:template>

</xsl:stylesheet>
