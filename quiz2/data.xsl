<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <tr>
                        <th>Customer ID</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Phone</th>
                    </tr>
                    <xsl:for-each select="/customers/customer">
                        <xsl:sort select="@custID"/>
                        <tr>
                            <td><xsl:value-of select="@custID"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="address"/></td>
                            <td><xsl:value-of select="phone"/></td>
                        </tr>
                    </xsl:for-each>
                </table>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>