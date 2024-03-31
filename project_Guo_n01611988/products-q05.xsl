<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <tr>
                        <th>Product Name</th>
                        <th>ASIN</th>
                        <th>Product URL</th>
                        <th>Brand Name</th>
                        <th>Image URL</th>
                        <th>MSRP</th>
                        <th>Sale Price</th>
                        <th>Discount</th>
                        <th>Product Description</th>
                        <th>Date Available</th>
                        <th>Number of Reviews</th>
                        <th>Seller Name</th>
                    </tr>
                    <xsl:for-each select="/suppliers/supplier/product">
                        <tr>
                            <td><xsl:value-of select="product_name"/></td>
                            <td><xsl:value-of select="asin"/></td>
                            <td><a href="{product_url}"><xsl:value-of select="product_url"/></a></td>
                            <td><xsl:value-of select="brand_name"/></td>
                            <td><img src="{image_url}" alt="Product Image" height="100"/></td>
                            <td><xsl:value-of select="msrp"/></td>
                            <td><xsl:value-of select="sale_price"/></td>
                            <td><xsl:value-of select="discount"/></td>
                            <td><xsl:value-of select="product_description"/></td>
                            <td><xsl:value-of select="date_available"/></td>
                            <td><xsl:value-of select="number_reviews"/></td>
                            <td><xsl:value-of select="seller_name"/></td>
                        </tr>
                    </xsl:for-each>
                </table>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>