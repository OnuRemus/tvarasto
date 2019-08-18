<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/data">
  <html>
    <body>
      <h1>Elokuvat</h1>
        <ul style="list-style-type:none;">
          <xsl:for-each select="elokuva">
          <xsl:sort select="nimi"/>
          <li>
            <h2><xsl:value-of select="nimi"/></h2>
            <p><xsl:value-of select="ohjaaja"/></p>
            <p><xsl:value-of select="julkaisuvuosi"/></p>
            <p><xsl:value-of select="genre"/></p>
            <p><xsl:value-of select="ikäraja"/></p>
            <p><xsl:value-of select="elokuvan_pituus"/></p>
          </li>
          </xsl:for-each>
        </ul>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>