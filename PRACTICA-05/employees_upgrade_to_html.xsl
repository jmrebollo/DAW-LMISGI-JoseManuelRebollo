<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
		<html>
			<head>
				<title>Llista d'empleats</title>
			</head>
			<body>
				<h2>Llista d'empleats</h2>
				<ul>
					<xsl:for-each select="employees/employee">
						<xsl:sort select="firstName"/>
						<li>
							<h3 style="color:blue;">
Empleat amb id
								<xsl:value-of select="@employeeNumber"/>
							</h3>
							<ul>
								<li>
									<b>Nom:</b>
									<span style="font-size:18px;">
										<xsl:value-of select="firstName"/>
										<xsl:value-of select="lastName"/>
									</span>
								</li>
								<li>
									<b>Correu:</b>
									<xsl:value-of select="email"/>
								</li>
								<li>
									<b>Id del seu superior:</b>
									<xsl:value-of select="reportsTo"/>
								</li>
								<li>
									<b>Posició:</b>
									<xsl:value-of select="jobTitle"/>
								</li>
								<li>
									<b>Oficina amb codi:</b>
									<xsl:value-of select="office/@ofCode"/>
									<ul>
										<li style="color:red; font-style:italic;">
											<b>Telèfon:</b>
											<xsl:value-of select="office/Phone"/>
										</li>
										<li style="color:red; font-style:italic;">
											<b>Adreça:</b>
											<xsl:value-of select="office/AddressLine1"/>
,
											<xsl:value-of select="office/AddressLine2"/>
										</li>
										<li style="color:red; font-style:italic;">
											<b>Estat:</b>
											<xsl:value-of select="office/State"/>
										</li>
										<li style="color:red; font-style:italic;">
											<b>País:</b>
											<xsl:value-of select="office/Country"/>
										</li>
										<li style="color:red; font-style:italic;">
											<b>Codi Postal:</b>
											<xsl:value-of select="office/PostalCode"/>
										</li>
										<li style="color:red; font-style:italic;">
											<b>Territori:</b>
											<xsl:value-of select="office/Territory"/>
										</li>
									</ul>
								</li>
							</ul>
						</li>
					</xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>