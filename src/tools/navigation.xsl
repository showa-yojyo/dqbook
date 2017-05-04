<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml"
  version="1.0">

<!-- ==================================================================== -->

<xsl:template name="mynavi">
  <xsl:param name="prev" select="/foo"/>
  <xsl:param name="next" select="/foo"/>
  <xsl:param name="nav.context"/>

  <xsl:variable name="home" select="/*[1]"/>
  <xsl:variable name="up" select="parent::*"/>
  <xsl:variable name="index" select="//index"/>

  <!-- TABLE -->
  <table>
    <tr>
      <xsl:if test="count($prev)>0">
        <td class="online-navigation">
          <a>
            <xsl:attribute name="href">
              <xsl:call-template name="href.target">
                <xsl:with-param name="object" select="$prev"/>
              </xsl:call-template>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:apply-templates select="$prev" mode="object.title.markup.textonly"/>
            </xsl:attribute>
            <xsl:call-template name="navig.content">
              <xsl:with-param name="direction" select="'prev'"/>
            </xsl:call-template>
          </a>
        </td>
      </xsl:if>

      <xsl:if test="count($up)>0">
        <td class="online-navigation">
          <a>
            <xsl:attribute name="href">
              <xsl:call-template name="href.target">
                <xsl:with-param name="object" select="$up"/>
              </xsl:call-template>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:apply-templates select="$up" mode="object.title.markup.textonly"/>
            </xsl:attribute>
            <xsl:call-template name="navig.content">
              <xsl:with-param name="direction" select="'up'"/>
            </xsl:call-template>
          </a>
        </td>
      </xsl:if>

      <xsl:if test="count($next)>0">
        <td class="online-navigation">
          <a>
            <xsl:attribute name="href">
              <xsl:call-template name="href.target">
                <xsl:with-param name="object" select="$next"/>
              </xsl:call-template>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:apply-templates select="$next" mode="object.title.markup.textonly"/>
            </xsl:attribute>
            <xsl:call-template name="navig.content">
              <xsl:with-param name="direction" select="'next'"/>
            </xsl:call-template>
          </a>
        </td>
      </xsl:if>

      <td>
        <xsl:apply-templates select="$home" mode="object.title.markup.textonly"/>
      </td>

      <td class="online-navigation">
        <a>
          <xsl:attribute name="href">
            <xsl:call-template name="href.target">
              <xsl:with-param name="object" select="$home"/>
            </xsl:call-template>
          </xsl:attribute>
          <xsl:attribute name="title">
            <xsl:apply-templates select="$home" mode="object.title.markup.textonly"/>
          </xsl:attribute>
          <xsl:call-template name="navig.content">
            <xsl:with-param name="direction" select="'home'"/>
          </xsl:call-template>
        </a>
      </td>

      <td class="online-navigation">
        <a>
          <xsl:attribute name="href">
            <xsl:call-template name="href.target">
              <xsl:with-param name="object" select="$index"/>
            </xsl:call-template>
          </xsl:attribute>
          <xsl:attribute name="title">
            <xsl:apply-templates select="$index" mode="object.title.markup.textonly"/>
          </xsl:attribute>
          <xsl:call-template name="navig.content">
            <xsl:with-param name="direction" select="'index'"/>
          </xsl:call-template>
        </a>
      </td>

    </tr>
  </table>

  <!-- TEXT -->
  <!-- 1. PREV -->

  <xsl:if test="count($prev)>0">
    <b class="navlabel"><xsl:text>Previous: </xsl:text></b>
    <a accesskey="p" class="sectref">
      <xsl:attribute name="href">
        <xsl:call-template name="href.target">
          <xsl:with-param name="object" select="$prev"/>
        </xsl:call-template>
      </xsl:attribute>
      <xsl:apply-templates select="$prev" mode="object.title.markup"/>
    </a>
    <xsl:text> </xsl:text>
  </xsl:if>

  <!-- 2. UP -->

  <xsl:if test="count($up)>0">
    <b class="navlabel"><xsl:text>Up: </xsl:text></b>
    <a accesskey="u" class="sectref">
      <xsl:attribute name="href">
        <xsl:call-template name="href.target">
          <xsl:with-param name="object" select="$up"/>
        </xsl:call-template>
      </xsl:attribute>
      <xsl:apply-templates select="$up" mode="object.title.markup"/>
    </a>
    <xsl:text> </xsl:text>
  </xsl:if>

  <!-- 3. NEXT -->

  <xsl:if test="count($next)>0">
    <b class="navlabel"><xsl:text>Next: </xsl:text></b>
    <a accesskey="n" class="sectref">
      <xsl:attribute name="href">
        <xsl:call-template name="href.target">
          <xsl:with-param name="object" select="$next"/>
        </xsl:call-template>
      </xsl:attribute>
      <xsl:apply-templates select="$next" mode="object.title.markup"/>
    </a>
  </xsl:if>
</xsl:template>

<!-- ==================================================================== -->

<xsl:template name="navig.content">
    <xsl:param name="direction" select="next"/>
    <xsl:variable name="navtext">
        <xsl:choose>
            <xsl:when test="$direction = 'prev'">
                <xsl:call-template name="gentext.nav.prev"/>
            </xsl:when>
            <xsl:when test="$direction = 'next'">
                <xsl:call-template name="gentext.nav.next"/>
            </xsl:when>
            <xsl:when test="$direction = 'up'">
                <xsl:call-template name="gentext.nav.up"/>
            </xsl:when>
            <xsl:when test="$direction = 'home'">
                <xsl:call-template name="gentext.nav.home"/>
            </xsl:when>
            <xsl:when test="$direction = 'index'">
                <xsl:call-template name="gentext">
                  <xsl:with-param name="key" select="'index'"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>xxx</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <xsl:choose>
        <xsl:when test="$navig.graphics != 0">
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="$navig.graphics.path"/>
                    <xsl:value-of select="$direction"/>
                    <xsl:value-of select="$navig.graphics.extension"/>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="$navtext"/>
                </xsl:attribute>
            </img>
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="$navtext"/>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<!-- ==================================================================== -->

<xsl:template name="header.navigation">
  <xsl:param name="prev" select="/foo"/>
  <xsl:param name="next" select="/foo"/>
  <xsl:param name="nav.context"/>
  <xsl:if test="$suppress.navigation = '0' and $suppress.header.navigation = '0'">
    <div class="navigation">
      <xsl:if test="$header.rule != 0">
        <xsl:call-template name="mynavi">
          <xsl:with-param name="prev" select="$prev"/>
          <xsl:with-param name="next" select="$next"/>
          <xsl:with-param name="nav.context" select="$nav.context"/>
        </xsl:call-template>
      </xsl:if>
      <hr/>
    </div>
  </xsl:if>
</xsl:template>

<!-- ==================================================================== -->

<xsl:template name="footer.navigation">
  <xsl:param name="prev" select="/foo"/>
  <xsl:param name="next" select="/foo"/>
  <xsl:param name="nav.context"/>
  <xsl:if test="$suppress.navigation = '0' and $suppress.footer.navigation = '0'">
    <div class="navigation">
      <hr/>
      <xsl:if test="$footer.rule != 0">
        <xsl:call-template name="mynavi">
          <xsl:with-param name="prev" select="$prev"/>
          <xsl:with-param name="next" select="$next"/>
          <xsl:with-param name="nav.context" select="$nav.context"/>
        </xsl:call-template>
      </xsl:if>
    </div>
  </xsl:if>
</xsl:template>

<!-- ==================================================================== -->

</xsl:stylesheet>
