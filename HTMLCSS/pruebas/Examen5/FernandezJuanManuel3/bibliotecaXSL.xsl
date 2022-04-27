<?xml version="1.0" encoding="UTF-8"?>
<!--Juan Manuel Fernandez Lobato Apartado1-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
        <!--Apartado 1-->
            <ol>
             <xsl:attribute name="type">1</xsl:attribute>
                <xsl:for-each select="bib/libro/autor">
                    <xsl:sort order="ascending" select="apellido"/> <!--Ordenar por apellido-->
                    <li><xsl:value-of select="apellido"/></li>
                </xsl:for-each>
            </ol>


        </body>
    </html>
</xsl:template>
</xsl:stylesheet>