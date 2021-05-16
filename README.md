# XMLResume
## Decription
Created A Copy of my Resume with an XML file, XML Schema File, and XML Stylesheet.

## Analysis and Design
I divided this subproject into three files namely:
 * resume.xml: Here this the main file where I included all the data for my resume in xml format.
 * resume.xsd: In this file I have defined all the elements and attributes that I used in the xml file.
 * resume.xsl: Here I formatted the xml file to be designed the way I would like it to be displayed on the web.
 
## Documentation of Implementation
All the data for my resume is included in the resume.xml file. The file is formated in an xml format with xml tags that have been defined in the resume.xsd file. The file begins with the resume tag which parents other sub tags such as info (contains all my contact information), education(contains my education details), computerandprogrammingskills(contains my computer and programming skills), workexperience, projects and extracurricular.

The main job of the resume.xsd file define the elements and attributes of resume.xml file and define the relationship of the elements and what data maybe stored in them. Most of the major sections of the resume where defined as complex types with a sequence of sub elements.

The resume.xsl sheet is basically constructed like a regular html file expect that I needed to use xsl tags to indicate that it was an xsl document and when I was trying to extract data to be formated nicely from the xml file.

## User Guide
To run the program all you need to do is:
1. Make sure all three files (resume.xml, resume.xsl and resume.xsd) are in the same directory.
2. Right click on the xml file and choose the option to run on browser.
