<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>Computers XSL</title>
				<style>
					*{
					font-size: 12px;
					}
					th {
					vertical-align: top;
					
					}
					td{
						height: 20pt;
					}
				</style>
			</head>
			<body>
				<h2>Computers List</h2>
				<table border="1">
					<tr>
						<th>
							<table border="1">
								<tr bgcolor="#9acd32">
									Monitor
									<th>Name </th>
									<th>Wihth</th>
									<th>Height</th>
								</tr>
								<xsl:for-each select="computers/computer">
									<xsl:sort select="monitor/name"/>
									<tr>
										<td>
											<xsl:value-of select="monitor/name"/>
										</td>
										<td>
											<xsl:value-of select="monitor/width"/>
										</td>
										<td>
											<xsl:value-of select="monitor/height"/>
										</td>
									</tr>
								</xsl:for-each>
							</table>
						</th>
						<th>
							<table border="1">
								<tr bgcolor="#9acd32">
									KeyBoard
									<th>Name</th>
									<th>Count Keys</th>
								</tr>
								<xsl:for-each select="computers/computer">
									<tr>
										<td>
											<xsl:value-of select="keyboard/name"/>
										</td>
										<td>
											<xsl:value-of select="keyboard/countKeys"/>
										</td>
									</tr>
								</xsl:for-each>
							</table>
						</th>
						<th>
							<table border="1">
								<tr bgcolor="#9acd32">
									Mouse
									<th>Name</th>
									<th>Type connection</th>
									<th>Count Buttons</th>
								</tr>
								<xsl:for-each select="computers/computer">
									<tr>
										<td>
											<xsl:value-of select="mouse/name"/>
										</td>
										<xsl:choose>
											<xsl:when test="mouse/isWireless = 0">
												<td>Wired</td>
											</xsl:when>
											<xsl:when test="mouse/isWireless = 1">
												<td>Wireless</td>
											</xsl:when>
											<xsl:otherwise>
												<td>Error Wireless</td>
											</xsl:otherwise>
										</xsl:choose>
										<td>
											<xsl:value-of select="mouse/countButtons"/>
										</td>
									</tr>
								</xsl:for-each>
							</table>
						</th>
						<th>
							<table border="1">
								<tr bgcolor="#9acd32">
									System Block
									<th>Name</th>
									<th>Width</th>
									<th>Height</th>
									<th>Weigth</th>
								</tr>
								<xsl:for-each select="computers/computer">
									<tr>
										<td>
											<xsl:value-of select="systemBlock/name"/>
										</td>
										<td>
											<xsl:value-of select="systemBlock/width"/>
										</td>
										<td>
											<xsl:value-of select="systemBlock/height"/>
										</td>
										<td>
											<xsl:value-of select="systemBlock/weigth"/>
										</td>
									</tr>
								</xsl:for-each>
							</table>
						</th>
						<th>
							<table border="1">
								<tr bgcolor="#9acd32">
									Motherboard
									<th>Name</th>
									<th>Form Factor</th>
									<th>Slots</th>
									<th>Connectors</th>
								</tr>
								<xsl:for-each select="computers/computer">
									<tr>
										<td>
											<xsl:value-of select="systemBlock/innerSystemBlock/motherboard/name"/>
										</td>
										<td>
											<xsl:value-of select="systemBlock/innerSystemBlock/motherboard/formFactor"/>
										</td>
										<td>
											<xsl:value-of select="systemBlock/innerSystemBlock/motherboard/slots"/>
										</td>
										<td>
											<xsl:value-of select="systemBlock/innerSystemBlock/motherboard/connectors"/>
										</td>
									</tr>
								</xsl:for-each>
							</table>
						</th>
						<th>
							<table border="1">
								<tr bgcolor="#9acd32">
									Video Card
									<th>CPU</th>
									<th>Core Clock Speed</th>
									<th>Memory Type</th>
									<th>Memory Size</th>
								</tr>
								<xsl:for-each select="computers/computer">
									<tr>
										<td>
											<xsl:value-of select="systemBlock/innerSystemBlock/videoCard/cpu"/>
										</td>
										<td>
											<xsl:value-of select="systemBlock/innerSystemBlock/videoCard/coreClockSpeed"/>
										</td>
										<td>
											<xsl:value-of select="systemBlock/innerSystemBlock/videoCard/memoryType"/>
										</td>
										<td>
											<xsl:value-of select="systemBlock/innerSystemBlock/videoCard/memorySize"/>
										</td>
									</tr>
								</xsl:for-each>
							</table>
						</th>
					</tr>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>