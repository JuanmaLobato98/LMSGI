<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <ol>
             <xsl:attribute name="type">1</xsl:attribute>
                <xsl:for-each select="catalogo/libro">
                    <li>
                    <xsl:value-of select="title"/>
                        <ol>
                            <xsl:attribute name="type">1</xsl:attribute>
                            <xsl:for-each select="autores/autor">
                                <xsl:sort select="." order="descending"/>

                                <li>

                                    <xsl:value-of select="."/>


                                </li>

                            </xsl:for-each>
                        </ol>
                    </li>
                </xsl:for-each>
            </ol>


        </body>
    </html>
</xsl:template>
</xsl:stylesheet>