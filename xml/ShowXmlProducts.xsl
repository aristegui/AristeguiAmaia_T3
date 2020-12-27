<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>		
			<head>
				<title>VerProductosXSL</title>
			</head>
			<body>
				<div id='page-wrap' align='center'>
					<header class='main' id='h1'>
						<h2>Productos con XSL</h2>
						<br></br>
						<table style="border-collapse: collapse;" border='1' bgcolor="#BDFDFA">
							<tr>
								<th>Vendedor</th>
								<th>Tipo de Producto</th>
								<th>Descripcion del producto</th>
								<th>Color del producto</th>
								<th>Precio</th>	
								<th>Categoria</th>	
								<th>Peso</th>							
							</tr>
							<xsl:for-each select="//assessmentItems/assessmentItem">
								<tr>
									<td><xsl:value-of select="./@seller"/></td>
									<td><xsl:value-of select="./itemBody/p"/></td>
									<td><xsl:value-of select="./priceProduct/value"/></td>
									<td>
										<xsl:for-each select="./otherDescription/value">
											<xsl:value-of select="."/>
											<br></br>
										</xsl:for-each>
									</td>							
									<td><xsl:value-of select="./@typeProduct"/></td>
								</tr>
								<br></br>
							</xsl:for-each>
						</table>
					</header>
				</div>
			</body>	
		</html>	
	</xsl:template>
</xsl:stylesheet>