<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <h1> Mi biblioteca personal </h1>
                <table>
                    <tr bgcolor="#f70000">
                        <th> Portada </th>
                        <th> Título </th>
                        <th> Autor </th>

                    </tr>
                    <xsl:for-each select="libreria/libro">
                    <xsl:sort order="ascending" select="autor"/> <!--Ordenar por autor ascendente-->
                         <tr>
                            <td>
                                <img> <!--Mostrar la imagen de la portada-->
                                <xsl:attribute name="src"> <!--asiganmos el atributo src a img -->
                                    <xsl:value-of select="portada"/><!--y le damos el valor de la ruta guardada en portada-->
                                </xsl:attribute>
                                <xsl:attribute name="height"><!--Asignamos tmbn un tamaño-->
                                    100
                                </xsl:attribute>

                                </img>
                             </td>
                            <td> <xsl:value-of select="titulo"/> </td>
                            <td> <xsl:value-of select="autor"/> </td>

                        </tr>

                    </xsl:for-each>
                </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>