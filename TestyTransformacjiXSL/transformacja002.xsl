<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" />
    <xsl:template match="/" >
        <h1>
            <xsl:value-of select="tabela_kursow/@uid" />
            z dnia
            <xsl:value-of select="tabela_kursow/numer_tabeli" />
        </h1>
        <xsl:apply-templates select="tabela_kursow/pozycja/kurs_sredni" />
    </xsl:template>
        <xsl:template match="kurs_sredni">
        <xsl:value-of select="text()" />
     </xsl:template>
</xsl:stylesheet>   