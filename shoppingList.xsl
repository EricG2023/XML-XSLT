<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Shopping Receipt</title>
                <link rel="stylesheet" type="text/css" href="shoppingList.css"/>
            </head>
            <body>
                <div class="receipt-container">
                    <h2 class="receipt-title">Fresh Market</h2>
                    <p class="receipt-info">Location: <xsl:value-of select="shoppingList/store/location"/></p>
                    <p class="receipt-info">Shopper: <xsl:value-of select="shoppingList/shopper/name"/></p>
                    <p class="receipt-info">Date: <xsl:value-of select="shoppingList/shopper/date"/></p>

                    <table class="receipt-table">
                        <tr>
                            <th>Item</th>
                            <th>Qty</th>
                            <th>Price</th>
                            <th>Total</th>
                        </tr>
                        <xsl:for-each select="shoppingList/items/item">
                            <tr>
                                <td><xsl:value-of select="name"/></td>
                                <td><xsl:value-of select="quantity"/></td>
                                <td>$<xsl:value-of select="price"/></td>
                                <td>$<xsl:value-of select="number(quantity) * number(price)"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>

                    <div class="receipt-total">
                
                
                    </div>
                    <p class="receipt-thankyou">Thank you for shopping with us!</p>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
