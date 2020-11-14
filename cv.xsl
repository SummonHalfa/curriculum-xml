<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<table border="0" align="center">
					<tr>
					<td><img height="100" weight="100" src="europass.jpg"/></td>
					<td><img height="200" weight="200" src="boy.png"/></td>
					</tr>
					<tr>
						<td><h3>CURRICULUM VITAE EUROPASS</h3></td>
						<td>Aggiornato a Ottobre 20020</td>
					</tr>
					<tr>
						<td><h3>Informazioni Personali</h3></td>
					</tr>
					<tr>
						<td>Nome</td>
						<td><xsl:value-of select="curriculum/anagrafica/dati_identitificativi/nome"/></td>
					</tr>
					<tr>
						<td>Cognome</td>
						<td><xsl:value-of select="curriculum/anagrafica/dati_identitificativi/cognome"/></td>
					</tr>
					<tr>
						<td>Sesso</td>
						<td><xsl:value-of select="curriculum/anagrafica/dati_identitificativi/sesso"/></td>
					</tr>
					<tr>
						<td>Linkedin</td>
						<td><xsl:value-of select="curriculum/anagrafica/dati_identitificativi/linkedin"/></td>
					</tr>
					<tr>
						<td>Cittadinanza</td>
						<td><xsl:value-of select="curriculum/anagrafica/dati_identitificativi/cittadinanza"/></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><xsl:value-of select="curriculum/anagrafica/dati_identitificativi/email"/></td>
					</tr>
					<tr>
						<td>Dati di nascita</td>
					</tr>
					<tr>
						<td>Data</td>
						<td><xsl:value-of select="curriculum/anagrafica/dati_nascita/data"/></td>
					</tr>
					<tr>
						<td>Luogo</td>
						<td><xsl:value-of select="curriculum/anagrafica/dati_nascita/luogo"/></td>
					</tr>
					<tr>
						<td><h3>Esperienze Lavorative</h3></td>
					</tr>
					<tr>
						<td><h3>Istruzione e Formazione</h3></td>
					</tr>
					<tr>
						<td><b>Lingua</b></td>
						<td><b>Livello</b></td>
					</tr>
					<xsl:for-each select="curriculum/lingue">				
					<tr>
						<td><xsl:value-of select="nome"/></td>
						<td><xsl:value-of select="livello"/></td>

					</tr>
					</xsl:for-each>						
					<tr>
						<td><h3>Competenze Informatiche</h3></td>
						<td>
						<table border="0">
							<th>Area</th>
							<th>Skill</th>
							<tr>
								<td>Languages</td>
								<td>
								<xsl:for-each select="curriculum/competenze/linguaggio">
								<xsl:value-of select="nome"/>,
								</xsl:for-each>	
								</td>
							</tr>
							<tr>
							<td>Operating System</td>
							<td>
								<xsl:for-each select="curriculum/competenze/OS">
								<xsl:value-of select="nome"/>,
								</xsl:for-each>	
							</td>
							</tr>
							<tr>
							<td>IDE</td>
							<td>
								<xsl:for-each select="curriculum/competenze/IDE">
								<xsl:value-of select="nome"/>,
								</xsl:for-each>	
							</td>
							</tr>
							
						</table>							
							<tr>
							<td><h2>Firma</h2></td>
							<td><img height="100" weight="100" src="firma.png"/></td>
							</tr>										
						</td>
					</tr>			
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>