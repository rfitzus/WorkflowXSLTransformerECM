<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

	<html lang="en">
		<head>
			<meta charset="utf-8"></meta>
			<meta http-equiv="X-UA-Compatible" content="IE=edge"></meta>
			<meta name="viewport" content="width=device-width, initial-scale=1"></meta>
			<title>Workflow Documentation</title>
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous"></link>
		</head>

		<body>
		
		<div class="container">
		<h1 id="Workflow"><xsl:value-of select="WorkflowXML/Name"/></h1>

			<img src="workflow.png" class="img-responsive" alt="Workflow"></img>
			<h2>Steps</h2>
				<ol>
				<xsl:for-each select="WorkflowXML/Steps/Step">
				<xsl:sort select="Description"/>
					<li><a href="#{generate-id(Name)}"><xsl:value-of select="Name"/></a></li>
				</xsl:for-each>
				</ol>	
					
		  
			<ol>
			<xsl:for-each select="WorkflowXML/Steps/Step">
			<xsl:sort select="Description"/>
			<h2 id="{translate(Name,' ','-')}"><li id="{generate-id(Name)}"><a href="#Workflow"><xsl:value-of select="Name"/></a></li></h2>
			<p>Step Description: <xsl:value-of select="Description"/></p>

				<ul>
				<h3>Actions</h3>
					<xsl:for-each select="Actions/Action">
					<h4><li><xsl:value-of select="Name"/></li><xsl:if test="Enable = 'False'">(Disabled)</xsl:if></h4>
					<p>Action Description: <xsl:value-of select="Description"/></p>
					<ul>
						<xsl:for-each select="Tasks/Task">
						<li>[<xsl:value-of select="TaskClassName"/>] <xsl:value-of select="Label"/> <xsl:if test="((TaskClassName != 'DatalinkTask') and (TaskClassName != 'SetFieldGroupValuesTask'))"><xsl:value-of select="InArgNames"/>-><xsl:value-of select="OutArgNames"/></xsl:if><xsl:if test="((TaskClassName = 'DatalinkTask') or (TaskClassName = 'SetFieldGroupValuesTask'))"><xsl:value-of select="Settings"/></xsl:if><xsl:if test="Enable = 'False'">(Disabled)</xsl:if></li>
						</xsl:for-each>
					</ul>	
					</xsl:for-each>
				</ul>
				
				<h3>Branches</h3>
				<ul>
				<xsl:for-each select="Branches/Branch">
				<h4><li><a href="#{translate(DestinationStep,' ','-')}"><xsl:value-of select="DestinationStep"/></a>(<xsl:value-of select="Condition"/>)</li></h4>
				</xsl:for-each>
				</ul>
			</xsl:for-each>
			</ol>
			
			</div>
			<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>