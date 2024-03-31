<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <table border="1">
                <tr>
                    <th>Book Name</th>
                    <th>Author</th>
                </tr>

                <xsl:for-each select="/books/book">
                    <tr>
                        <td><xsl:value-of select="title"/></td>
                        <td><xsl:value-of select="author"/></td>
                    </tr>
                </xsl:for-each> 
            </table>
        </html>
    </xsl:template>
</xsl:stylesheet>