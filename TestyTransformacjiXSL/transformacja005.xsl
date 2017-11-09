<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" />
    <xsl:template match="/tabela_kursow" >
        <h1>
            <xsl:value-of select="./@uid" />
            z dnia:
            <xsl:value-of select="./numer_tabeli" />
            ,typ: 
            <xsl:value-of select="@typ" />
        </h1>
        <hr />
        <xsl:apply-templates select="./pozycja" />
        <hr />
     </xsl:template>

     <xsl:template match="kod_waluty" />

     <xsl:template match="nazwa_waluty">
        <xsl:value-of select="text()" /> ?
     </xsl:template>

     <xsl:template match="przelicznik">
        <xsl:value-of select="text()" /> - 
        <xsl:value-of select="parent::node()/kurs_sredni" />
     </xsl:template>

     <xsl:template match="kurs_sredni">
        <xsl:value-of select="text()" /><br />
     </xsl:template>

</xsl:stylesheet>   