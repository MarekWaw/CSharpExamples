<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" />
    <xsl:template match="/" >
        <ul>
        <h1>
            <xsl:value-of select="tabela_kursow/@uid" />
            z dnia
            <xsl:value-of select="tabela_kursow/numer_tabeli" />
        </h1>
         <xsl:for-each select="/tabela_kursow/pozycja">
            <li>
                <xsl:value-of select="kurs_sredni" />
            </li>
        </xsl:for-each>
        </ul>
    </xsl:template>
</xsl:stylesheet>   