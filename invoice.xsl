<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Invoice</title>
                <link rel="stylesheet" type="text/css" href="invoice.css"/>
            </head>
            <body>
                <div class="invoice-container">
                    <div class="invoice-header">
                        <div class="logo">
                            <h1>Your Business Name</h1>
                        </div>
                        <div class="invoice-details">
                            <p><strong>Invoice No:</strong> 2022435</p>
                            <p><strong>Issue Date:</strong> 19/7/2022</p>
                            <p><strong>Due Date:</strong> 3/8/2022</p>
                        </div>
                    </div>
                    
                    <div class="info-section">
                        <div class="company-info">
                            <h2>Bill To</h2>
                            <p><strong>Name:</strong> <xsl:value-of select="invoice/company/name"/></p>
                            <p><strong>Address:</strong> <xsl:value-of select="invoice/company/address"/></p>
                        </div>
                        <div class="customer-info">
                            <h2>Customer</h2>
                            <p><strong>Name:</strong> <xsl:value-of select="invoice/customer/name"/></p>
                            <p><strong>Address:</strong> <xsl:value-of select="invoice/customer/address"/></p>
                        </div>
                    </div>
                    
                    <table>
                        <tr>
                            <th>Description</th>
                            <th>Quantity</th>
                            <th>Price ($)</th>
                        </tr>
                        <xsl:for-each select="invoice/items/item">
                            <tr>
                                <td><xsl:value-of select="description"/></td>
                                <td><xsl:value-of select="quantity"/></td>
                                <td>$<xsl:value-of select="price"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    
                    <div class="total-section">
                        <p><strong>Total Due (USD):</strong> $<xsl:value-of select="invoice/total"/></p>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>