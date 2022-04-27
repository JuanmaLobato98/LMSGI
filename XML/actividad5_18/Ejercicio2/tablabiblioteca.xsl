<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1> Mi biblioteca personal </h1>
                <table>
                    <tr bgcolor="#f70000">
                        <th> ISBN </th>
                        <th> Título </th>
                        <th> Autor </th>
                        <th> Precio </th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                        <xsl:if test="autor!='J.K. Rowling'"> <!--comprobar que el autor no sea el indicado
                                 En caso de querer buscar ese autor valdria con cambiar el operador a = -->
                            <tr>
                                <td> <xsl:value-of select="isbn"/> </td>
                                <td> <xsl:value-of select="titulo"/> </td>
                                <td> <xsl:value-of select="autor"/> </td>
                                <td> <xsl:value-of select="precio"/> </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>