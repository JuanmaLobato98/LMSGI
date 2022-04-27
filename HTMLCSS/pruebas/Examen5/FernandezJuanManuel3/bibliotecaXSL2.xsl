<?xml version="1.0" encoding="UTF-8"?>
<!--Juan Manuel Fernandez Lobato Apartado2-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
             <!--Apartado 2-->
            <ol>
             <xsl:attribute name="type">1</xsl:attribute>
                <xsl:for-each select="bib/libro">
                    <xsl:if test="precio &lt; 100"> <!--Indicar que el precio sea menor que 100-->
                    <li><xsl:value-of select="titulo"/></li>
                    </xsl:if>
                </xsl:for-each>
            </ol>


        </body>
    </html>
</xsl:template>
</xsl:stylesheet>