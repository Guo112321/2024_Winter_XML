<?xml version="1.0" encoding="UTF-8"?>
<!-- xsl stylesheet declaration with xsl namespace: 
Namespace tells the xlst processor about which 
element is to be processed and which is used for output purpose only 
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- xsl template declaration:  
template tells the xlst processor about the section of xml 
document which is to be formatted. It takes an XPath expression. 
In our case, it is matching document root element and will 
tell the processor to process the entire document with this template. 
-->
  <xsl:template match="/">
    <!-- HTML tags 
      Used for formatting purpose. Processor will skip them and browser 
      will simply render them. (as there is no xsl namespace)
    --> 
    <html>
      <body>
        <h2>Student:</h2>
        <table border="1">
          <tr>
            <td>First Name</td>
            <td>
              <xsl:value-of select="//student/firstname" />
            </td>
          </tr>
  
          <tr>
              <td>Last Name</td>
              <td>
              <xsl:value-of select="//student/lastname" />
            </td>
          </tr>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>