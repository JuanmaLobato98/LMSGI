<?xml version="1.0" encoding="UTF-8"?>
<!--Juan Manuel Fernandez Lobato Apartado3-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
                <table>
                    <tr>
                        <th> Precio </th>
                        <th> Título </th>
                        <th> Año </th>

                    </tr>
                    <xsl:for-each select="bib/libro">
                    <xsl:sort order="ascending" select="precio"/><!--ordenar por precio-->
                         <tr>
                            <td>
                            <xsl:value-of select="precio"/>
                            </td>
                            <td> <xsl:value-of select="titulo"/> </td>
                            <td>
                            <xsl:attribute name="style">font-style: italic;</xsl:attribute> <!--Poner letras en cursiva-->
                             <xsl:value-of select="@año"/>
                              </td>

                        </tr>

                    </xsl:for-each>
                </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>