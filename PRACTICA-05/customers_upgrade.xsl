<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<xsl:element name="customers">
			<xsl:for-each select="DATA/ROW">
				<xsl:element name="customer">
					<xsl:attribute name="customerNumber">
						<xsl:value-of select="customerNumber"/>
					</xsl:attribute>
					<xsl:element name="customerName">
						<xsl:value-of select="customerName"/>
					</xsl:element>
					<xsl:element name="phone">
						<xsl:value-of select="phone"/>
					</xsl:element>
					<xsl:element name="contact">
						<xsl:element name="contactFirstName">
							<xsl:value-of select="contactFirstName"/>
						</xsl:element>
						<xsl:element name="contactLastName">
							<xsl:value-of select="contactLastName"/>
						</xsl:element>
					</xsl:element>
					<xsl:element name="adress">
						<xsl:element name="addressLine1">
							<xsl:value-of select="addressLine1"/>
						</xsl:element>
						<xsl:element name="addressLine2">
							<xsl:value-of select="addressLine2"/>
						</xsl:element>
						<xsl:element name="city">
							<xsl:value-of select="city"/>
						</xsl:element>
						<xsl:element name="state">
							<xsl:value-of select="state"/>
						</xsl:element>
						<xsl:element name="postalCode">
							<xsl:value-of select="postalCode"/>
						</xsl:element>
						<xsl:element name="country">
							<xsl:value-of select="country"/>
						</xsl:element>
					</xsl:element>
					<xsl:element name="salesRepEmployeeNumber">
						<xsl:value-of select="salesRepEmployeeNumber"/>
					</xsl:element>
					<xsl:element name="creditLimit">
						<xsl:value-of select="creditLimit"/>
					</xsl:element>
				</xsl:element>
			</xsl:for-each>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>