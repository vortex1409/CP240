<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" doctype-system="about:legacy-compat"/>

<!--

	Class: CP240
	Assignment: LAB 8
	Date: 03/21/2017
	Description: XML/XSL/Stylrd
	Name: Michael Dorfman

-->

<xsl:template match="/">
  <html>
  <body>
  <h2><span style="font-size:24pt"><xsl:value-of select="bookstore/storeName"/></span> Book Collection</h2>
  <h4>Address: <i><xsl:value-of select="bookstore/address"/></i></h4>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Author</th>
	  <th>Title</th>
	  <th>Page Count</th>
	  <th>Publish Date</th>
	  <th>Cost</th>
    </tr>
    <xsl:for-each select="bookstore/collection/book">
    <tr>
      <td><xsl:value-of select="author"/></td>
      <td><xsl:value-of select="title"/></td>
	  <td><xsl:value-of select="pageCount"/></td>
	  <td><xsl:value-of select="publishDate"/></td>
	  <td><xsl:value-of select="cost"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
