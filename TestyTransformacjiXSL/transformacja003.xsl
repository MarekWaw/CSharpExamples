<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" />
    <xsl:template match="/tabela_kursow" >
        <h1>
            <xsl:value-of select="./@uid" />
            z dnia:
            <xsl:value-of select="./numer_tabeli" />
        </h1>
        <xsl:apply-templates select="./pozycja" />
    </xsl:template>
</xsl:stylesheet>   