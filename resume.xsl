<?xml version="1.0" encoding="UTF-8"?>
<!-- resume.xsl-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
			<title>
				<xsl:value-of select="/resume/info/name"/>
			</title>
			</head>
			<body>
				<header>
					<h1 style="align:centre"><xsl:value-of select="/resume/info/name"/></h1>
					<p style="align:centre"><xsl:value-of select="/resume/info/address/street"/>,<xsl:value-of select="/resume/info/address/prov"/>,<xsl:value-of select="/resume/info/address/country"/>,<xsl:value-of select="/resume/info/address/postalcode"/>|<xsl:value-of select="/resume/info/email"/></p>
					<p style="align:centre"><xsl:value-of select="/resume/info/github"/></p>
					<p style="align:centre"><xsl:value-of select="/resume/info/portfolio"/></p>
				</header>
				<h2>Education</h2>
				<xsl:for-each select="/resume/education/degree">
					<p sytle="align:left"><xsl:value-of select="/resume/education/degree/program"/> &#160; -<xsl:value-of select="/resume/education/degree/university"/>&#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160;<i style="align:right"><xsl:value-of select="/resume/education/degree/@graduation"/></i></p>
				</xsl:for-each>	
				
				<h2>Work Experience</h2>
				<xsl:for-each select="/resume/workexperience/experience">
                    <b><xsl:value-of select="position"/>&#160;</b> &#160; - <xsl:value-of select="position/@at"/> &#160;&#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160;<i>  <xsl:value-of select="start"/>&#160;till&#160;<xsl:value-of select="end"/></i><br></br>
                    <p><xsl:for-each select="description/task">
							<li><xsl:value-of select="text()"/></li>
						</xsl:for-each></p>
                    
				</xsl:for-each>
			    <h2>Projects</h2>   
				<xsl:for-each select="/resume/projects/project">
					<p><b><xsl:value-of select="projname"/>: </b> 
					<xsl:value-of select="projdescription"/></p>
				</xsl:for-each>
				<h2> Extracurricular</h2>
				<xsl:for-each select="/resume/extracurricular/club">
					<p><b><xsl:value-of select="clubname"/>: </b>
					<xsl:value-of select="contribution"/></p>
				</xsl:for-each>
				<h3><xsl:value-of select="resume/refrences"/></h3>
			</body>
		 
		</html>
	</xsl:template>
</xsl:stylesheet>