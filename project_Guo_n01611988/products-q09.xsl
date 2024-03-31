<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <body>
                        <xsl:for-each select="/suppliers/supplier">
                            <table border="1" style="width: 30%; font-size: larger;" align="center">
                                <tr>
                                    <th>Supplier ID</th>
                                    <td><xsl:value-of select="supplierid"/></td>
                                    <th>Distribution Area</th>
                                    <td><xsl:value-of select="distributionarea"/></td>
                                </tr>
                            </table>
                            <br></br>
                            <table border="1" style="width: 40%;" align="center">
                                <tr>
                                    <th>Product ID</th>
                                    <th>In Stock</th>
                                    <th>Product Name</th>
                                    <th>MSRP</th>
                                    <th>Sale Price</th>
                                </tr>
                                <xsl:for-each select="product">
                                    <xsl:sort select="@productid"/>
                                    <tr>
                                        <xsl:if test="@instock = 'N'">
                                            <xsl:attribute name="style">color: red;</xsl:attribute>
                                        </xsl:if>
                                        <td><xsl:value-of select="@productid"/></td>
                                        <td><xsl:value-of select="@instock"/></td>
                                        <td><xsl:value-of select="product_name"/></td>
                                        <td><xsl:value-of select="msrp"/></td>
                                        <td><xsl:value-of select="sale_price"/></td>
                                    </tr>

                                </xsl:for-each>
                            </table> 
                            <br></br> 
                            <br></br>
                            <br></br> 
                            <br></br>
                        </xsl:for-each>
                    </body>
                </table>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>