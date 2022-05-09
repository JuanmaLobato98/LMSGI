<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <ol>
             <xsl:attribute name="type">1</xsl:attribute> <!--Indicamos que sea una lista con el atributo type=1 para que sea enumerado-->
                <xsl:for-each select="catalogo/libro">
                    <li><xsl:value-of select="title"/></li>
                </xsl:for-each>
            </ol>


        </body>
    </html>
</xsl:template>
</xsl:stylesheet>