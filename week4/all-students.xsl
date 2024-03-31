<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h2>Student Information</h2>
        <table>
          <tr>
            <th>Roll No</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Marks</th>
          </tr>
          <xsl:apply-templates select="//student" />
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="student">
    <tr>
      <td><xsl:value-of select="@rollno" /></td>
      <td><xsl:value-of select="firstname" /></td>
      <td><xsl:value-of select="lastname" /></td>
      <td><xsl:value-of select="marks" /></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
