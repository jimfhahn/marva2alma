<?xml version="1.0" encoding="UTF-8"?>
<!-- filepath: xsl/put_mms_id.xsl -->
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:wsr="http://com/exlibris/urm/general/xmlbeans">
    
    <xsl:output method="text"/>

    <xsl:template match="/">
        <xsl:for-each select="wsr:web_service_result/wsr:errorList/wsr:error/wsr:errorMessage">
            <xsl:call-template name="get-string-in-brackets">
                <xsl:with-param name="text" select="."/>
            </xsl:call-template>
            <xsl:text>&#10;</xsl:text> <!-- Newline separator between MMS IDs -->
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="get-string-in-brackets">
        <xsl:param name="text"/>
        <xsl:choose>
            <xsl:when test="contains($text, '[') and contains($text, ']')">
                <xsl:value-of select="substring-before(substring-after($text, '['), ']')"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>No text found in brackets</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>