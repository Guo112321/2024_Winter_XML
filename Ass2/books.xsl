<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--
   /********************************************************************************* 
* ITC5202 – Assignment 2 
* I declare that this assignment is my own work in accordance with Humber Academic Policy. 
* No part of this assignment has been copied manually or electronically from any other source 
* (including web sites) or distributed to other students. 
* 
* Name:  Guo Xinfu 
Student ID:  n01611988 
Date:  2024/2/11 
* 
********************************************************************************/
-->
    <xsl:template match="/">
        <html>
            <body>
                <h2>Books:</h2>
                <table border="1">
                    <tr>
                        <th>title</th>
                        <th>ISBN</th>
                        <th>anthor</th>
                        <th>type</th>
                        <th>publisher</th>
                        <th>sellPrice</th>
                        <th>categories</th>
                        <th></th>
                    </tr>

                    <xsl:for-each select="/books/book">
                        <xsl:sort select="@ISBN"/>
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="@ISBN"/></td>
                            <td><xsl:value-of select="author"/></td>
                            <td><xsl:value-of select="type"/></td>
                            <td><xsl:value-of select="publisher"/></td>
                            <td><xsl:value-of select="sellPrice"/></td>
                            <td><xsl:value-of select="categories"/></td>
                        </tr>
                    </xsl:for-each>

                    
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>