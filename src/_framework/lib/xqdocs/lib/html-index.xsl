<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
xmlns="http://www.w3.org/1999/xhtml"
xmlns:doc="http://www.xqdoc.org/1.0"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:fn="http://www.w3.org/2005/02/xpath-functions"
xmlns:c="http://www.w3.org/ns/xproc-step"
exclude-result-prefixes="xs doc fn"
version="2.0">

<xsl:output method="html" indent="yes" encoding="UTF-8"/>
<xsl:param name="source" as="xs:string"/>

  <!-- generate module html //-->
  <xsl:template match="/">
    <html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="Generator" content="xquerydoc - https://github.com/xquery/xquerydoc" />
	<title>xqDoc - </title>
        <style type="text/css">
	html {
        width:100%;
	margin:0;
	padding:0;
	color:#000;
        overflow-y: hidden;
	}
        h1,h2,h3,h4,h5,h6 { font-family: Tahoma, Helvetica, Arial, sans-serif; }
        body { padding: 0; background-color:#FFFFFF; color: #16291A; 
        font: normal normal 14px Tahoma, Verdana,"Lucida Sans","Lucida Sans Unicode", Arial, sans-serif;
	}
        a:link    { color: #16291A }
        a:visited { color: #16291A }
        a:active  { color: #16291A }
	#wrap {
	width:100%;
        height:100%;
	margin:0 auto;
	}
	#header {
    	padding:5px 10px;
	}
	h1 {
	margin:0;
            }
	#main {
	float:right;
	width:75%;
        height:100%;
	padding:0px;
	}
	h2 {
	margin:0 0 1em;
	}
	#sidebar {
        float:left;
        height:100%;
	width:25%;
	padding:0px;
        overflow:auto;
	}
	#footer {
	clear:both;
	padding:5px 10px;
	background:#cc9;
	}
	#footer p {
	margin:0;
        }
	* html #footer {
	height:1px;
	}
        iframe {
        border-top: #c00 1px dotted;
        border-right: #c00 2px dotted;
        border-left: #c00 2px dotted;
        border-bottom: #c00 4px dotted;
        }
        </style>
	<link rel="stylesheet" type="text/css" href="lib/prettify.css">&#160;</link>
	<script src="lib/prettify.js" type="lib/javascript">&#160; </script>
	<script src="lib/lang-xq.js" type="text/javascript">&#160; </script>
      </head>
      <body>
        <div id="wrap">
          <div id="sidebar">
            <ul>
              <xsl:apply-templates select="//*:file"/>
            </ul>
          </div>
          <div id="main">
            <iframe name="docs" style="height:100%;width:100%;border: 0px solid #ffffff; "/>
          </div>
          <div id="footer">
              <i>
                <xsl:value-of select="()"/>
                </i> |
                generated by xquerydoc <a
                href="https://github.com/xquery/xquerydoc"
                target="xquerydoc">https://github.com/xquery/xquerydoc</a>
          </div>
        </div>
	<script type="application/javascript">
	  window.onload = function(){ prettyPrint(); }
	</script>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="*:file">
    <li><a href="{@gname}.html" target="docs"><xsl:value-of select="@base"/>/<xsl:value-of select="@name"/></a></li>
  </xsl:template>

</xsl:stylesheet>