<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1> Catalogo </h1><!--Cambbiar titulo-->
                <table>
                    <tr bgcolor="#f70000"><!--Cambiar color-->
                        <th> Título </th>
                        <th> Autor </th>
                    </tr>
                    <xsl:for-each select="catalogo/libro">
                        <tr>
                            <td> <xsl:value-of select="title"/> </td>
                            <td> <xsl:value-of select="autor"/> </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>