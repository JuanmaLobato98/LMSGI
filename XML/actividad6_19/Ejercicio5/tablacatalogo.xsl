<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1> Catalogo </h1>
                <table>
                    <tr bgcolor="#f70000">
                        <th> Título </th>
                        <th> Autores </th>
                    </tr>
                    <xsl:for-each select="catalogo/libro[@fechaedicion &gt; 2000]"> <!--Indicar que solo selecciones los que esten editados por encima del 2000-->
                        <tr>
                            <td> <xsl:value-of select="titulo"/> </td>
                            <td>
                                <xsl:for-each select="autores/autor">
                                <xsl:value-of select="."/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>