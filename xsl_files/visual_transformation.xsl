<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
		<head>
			<title>Simple ProtDataset</title>
			<link href="style.css" rel="stylesheet" type="text/css" />
		</head>
		<body>
			<xsl:for-each select="protdataset">
				<div id="card"> 
					<h2> Simple ProtDataset </h2>
				</div>
				<xsl:for-each select="protein">

						<table border="1" id="Main_info"> 
							<h3>Main informations</h3>
							<tr>
								<td class="headings"> Name </td>
								<td> <p class="ex_info"> <xsl:value-of select="nazwa"/> </p> </td>
							</tr>
							<tr>
								<td class="headings"> UniProt ID </td>
								<td > <p class="ex_info"> <xsl:value-of select="ID"/> </p> </td>
							</tr>
							<tr>
								<td class="headings"> Coding Gene </td>
								<td> <p class="ex_info"> <xsl:value-of select="gene"/> </p> </td>
							</tr>
							<tr>
								<td class="headings"> Organism </td>
								<td> <p class="ex_info"> <xsl:value-of select="organism"/> </p> </td>
							</tr>
						</table>
				</xsl:for-each>

				<xsl:for-each select="function">
					<div id="function">
						<h3> Functions </h3>
						<table border="1">
							<tr>
								<td class="headings"> Molecular roles </td>
								<td class="headings"> Biological roles </td>
							</tr>
							<tr>
								<td>
									<xsl:for-each select="molecular">
										<p class="ex_info"> <xsl:value-of select="." /> </p>
									</xsl:for-each>
								</td>
								<td>
									<xsl:for-each select="biological">
										<p class="ex_info"> <xsl:value-of select="." /> </p>
									</xsl:for-each>
								</td>
							</tr>
						</table>
					</div>

				</xsl:for-each>

				<xsl:for-each select="localisation">
					<div id="localisation">
						<h3> Localisation </h3>
						<table border="1">
							<tr>
								<td class="headings"> Tissue </td>
								<td class="headings"> Subcellular </td>
							</tr>
							<tr>
								<td class="ex_info"> 
									<xsl:for-each select="tissue"> 
										<p class="local"> <xsl:value-of select="." /> </p> 
									</xsl:for-each> 
								</td>

								<td class="ex_info"> 
									<xsl:for-each select="subcell"> 
										<p class="local"> <xsl:value-of select="." /> </p> 
									</xsl:for-each> 
								</td>
							</tr>
						</table>
					</div>
				</xsl:for-each>



					<h3>Sequences</h3>
					<div id="seq">
						<a href="nucleotides.fasta"> <h4 class="cds"> Nucleotide origin sequence</h4> </a>

						<a href="aminoacids.fasta"> <h4 class="cds">Translated protein sequence</h4> </a>
					</div>


				<xsl:for-each select="structure">
					<h3>Structure</h3>
					<div class="struct">
						<img src="fst.png" alt="first"/> <xsl:value-of select="first" />
					</div>

				</xsl:for-each>
			</xsl:for-each>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet> 
