<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <!-- Element allows to do looping in XSLT for each tag-->
                <xsl:for-each select="car/car_details">
                    <div>
                        <table>
                            <tr>
                                <th id="gambar" rowspan="2">
                                    <!-- To declare an image in the XML file -->
                                    <img src="{picture_name}" align="left" width=""/>
                                </th>
                                <td id="desc" colspan="2">
                                    <!-- The value-of element is to extract the value of a selected tag -->
                                    <span id="n"><xsl:value-of select="name"/></span><br/>
                                    <span id="p"><xsl:value-of select="price"/></span>
                                </td>
                                <td id="d">
                                    <xsl:value-of select="date"/><br/>
                                    <xsl:value-of select="region"/>
                                </td>
                            </tr>
                            <tr>
                                <td id="s">
                                    <xsl:for-each select="status">
                                        <!-- Insert icon in front of each STATUS tag -->
                                        <i class="fa fa-tag"></i><xsl:value-of select="condition"/><br/>
                                        <i class="fa fa-calendar"></i><xsl:value-of select="year"/>
                                        <br/>
                                    </xsl:for-each>
                                </td>
                                <td id="s">
                                    <xsl:for-each select="status">
                                        <i class="fa fa-dashboard"></i><xsl:value-of select="mileage"/><br/>
                                        <i class="fa fa-lg fa-clock-o"></i><xsl:value-of select="capacity"/>
                                    </xsl:for-each>
                                </td>
                                <td></td>
                            </tr>
                        </table>
                        <hr/>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
