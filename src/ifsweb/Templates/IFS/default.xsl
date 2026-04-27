<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="../../system/currentversion/templates/system.xsl"/>
<xsl:output method="html" indent="yes"/>


<xsl:template name="ShowPage" match="/">

	<style>
		td {
			text-align: center !important;
		}

		body {
			font-size: 0.8em;
		}

		input {
			font-size: 1.2em;
			padding: 2px;
			border-top: 2px solid #404040;
			border-left: 2px solid #404040;
			border-right: 2px solid #fff;
			border-bottom: 2px solid #fff;
		}

		#app {
			background-color: #d1cec6;
			border-top: 2px solid #fff;
			border-left: 2px solid #fff;
			border-right: 2px solid #404040;
			border-bottom: 2px solid #404040;
			padding: 1px;
		}

		.ifs_button {
			background-color: #d1cec6; 
			padding: 5px 30px; 
			margin: 4px; 
			font-size: 1em; 
			border-top: 1px solid #fff; 
			border-left: 1px solid #fff; 
			border-right: 1px solid #404040;
			border-bottom: 1px solid #404040;
			border-width: 1px;
			margin-top: 10px;
			cursor: pointer;
		}
		.ifs_button:active {
			border-top: 1px solid #404040; 
			border-left: 1px solid #404040; 
			border-right: 1px solid #fff;
			border-bottom: 1px solid #fff;
		}
	</style>

	<style>
/* Style The Dropdown Button */
.dropbtn {
  color: #000;
  padding: 4px;
  font-size: 12px;
  border: none;
  cursor: pointer;
  background-color: #ceccc4;
}

/* The container  - needed to position the dropdown content */
.dropdown {
  float: left;
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
  text-align: left;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 4px;
  text-decoration: none;
  display: block;
  font-weight: normal;
  font-size: 12px;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #f1f1f1}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
  display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
  background-color: #ccc;
}

.popup_window {
	border: 2px solid #000;
	z-index: 999;
	padding: 0px;
	position: fixed;
	top: 50%;
	left: 50%;
	margin-left: -300px;
	margin-top: -125px;
	background-color: #fff;
	border: 2px solid #000;
	display: none;
}
.popup_window_banner {
	width: 600px;
	background-color: #04216c;
	background-image: linear-gradient(to right,  #04216c, #a5c9ef);
	color: #fff;
	text-align: left;
	padding: 3px;
	font-size: 14px;
}
.popup_window_banner_button {
	float: right; 
	background-color: #ccc; 
	color: #000; 
	height: 16px; 
	width: 16px; 
	text-align: center; 
	border-top: 1px solid #fff; 
	border-left: 1px solid #fff; 
	border-right: 1px solid #000; 
	border-bottom: 1px solid #000;
}

</style>

	<xsl:call-template name="ShowPageTitle"/>

		<!--<xsl:if test="/ROOT/ACCESSRIGHTS/LOGGEDIN='False'">
			<center><a style="background-color: #ff0; font-weight: normal" href="{$ROOTDIR}{/ROOT/OBJECT/ID}login.htm">Login if you'd like to save IFS files</a></center><br/>
		</xsl:if>-->

		<div class="popup_window" id="explorer">
				<div class="popup_window_banner">Open File

						<div class="popup_window_banner_button" onClick="document.getElementById('explorer').style.display='none';">X</div>
				</div>
				<iframe style="width: 600px; height: 250px; overflow: auto; border; 1px solid #ccc; overflow: hidden;" name="explorer">
					<xsl:attribute name="src">
						<xsl:choose>
							<xsl:when test="translate(/ROOT/OBJECT/ID,$ucase, $lcase)='/ifs/'"><xsl:value-of select="$ROOTDIR"/><xsl:value-of select="/ROOT/OBJECT/ID"/>explorer.htm?IGNOFRAME=True</xsl:when>
							<xsl:otherwise><xsl:value-of select="$ROOTDIR"/><xsl:value-of select="/ROOT/PARENT/OBJECT/ID"/>explorer.htm?IGNOFRAME=True</xsl:otherwise>
						</xsl:choose>
					</xsl:attribute></iframe>
				<br/><br/>
				<center><table><tr><td>
			<xsl:choose>
				<xsl:when test="/ROOT/REQUEST/NAME[not(.='')]">
						<input type="hidden" name="ID" value="$NEW$"/>
						<input type="hidden" name="PARENTID" value="{ROOT/OBJECT/ID}{/ROOT/ACCESSRIGHTS/USERID}/"/>
						Filename: <input type="text" onClick="this.select();" name="name" value="{/ROOT/REQUEST/NAME}"/>
				</xsl:when>
				<xsl:otherwise>
						<input type="hidden" name="ID" value="{ROOT/OBJECT/ID}"/>					
						<input type="hidden" name="PARENTID" value="{ROOT/PARENT/OBJECT/ID}"/>
						Filename: <input type="text" onClick="this.select();" name="name" value="{/ROOT/OBJECT/NAME}"/>
				</xsl:otherwise>
			</xsl:choose>
				</td><td>
						<div style="float: right; background-color: #ccc; color: #000; text-align: center; border: 1px solid #000; padding: 4px; font-size: 18px;  border: 1px solid #ccc;" onClick="document.getElementById('explorer').style.display='none';">Cancel</div>
					</td></tr></table></center>
					<br/>
		</div>


	<form name="ifs" action="{$ROOTDIR}/action.asp">
		<input type="hidden" name="action" value="save"/>
		<input type="hidden" name="framework" value="{/ROOT/OBJECT/FRAMEWORK}"/>
		<input type="hidden" name="type" value="{/ROOT/OBJECT/TYPE}"/>
		<input type="hidden" name="childtype" value="{/ROOT/OBJECT/CHILDTYPE}"/>
		<input type="hidden" name="sortkey" value="{/ROOT/OBJECT/SORTKEY}"/>


		<div class="popup_window" id="explorer2">
				<div class="popup_window_banner">Save File
						<div class="popup_window_banner_button" onClick="document.getElementById('explorer2').style.display='none';">X</div>
				</div>

				<iframe style="width: 600px; height: 250px; overflow: auto; border; 1px solid #ccc; overflow: hidden;" name="explorer">
					<xsl:attribute name="src">
						<xsl:choose>
							<xsl:when test="/ROOT/REQUEST/NEW='True' or (/ROOT/ACCESSRIGHTS/LOGGEDIN='True' and  not(/ROOT/ACCESSRIGHTS/CANEDIT='True'))"><xsl:value-of select="$ROOTDIR"/>/ifs/<xsl:value-of select="/ROOT/ACCESSRIGHTS/USERID"/>/explorer.htm?IGNOFRAME=True</xsl:when>
							<xsl:when test="translate(/ROOT/OBJECT/ID,$ucase, $lcase)='/ifs/'"><xsl:value-of select="$ROOTDIR"/><xsl:value-of select="/ROOT/OBJECT/ID"/>explorer.htm?IGNOFRAME=True</xsl:when>
							<xsl:otherwise><xsl:value-of select="$ROOTDIR"/><xsl:value-of select="/ROOT/PARENT/OBJECT/ID"/>explorer.htm?IGNOFRAME=True</xsl:otherwise>
						</xsl:choose>
					</xsl:attribute></iframe>
				<center><table><tr><td>
			<xsl:choose>
				<xsl:when test="/ROOT/REQUEST/NAME[not(.='')] or not(/ROOT/ACCESSRIGHTS/CANEDIT='True')">
						<input type="hidden" name="ID" value="$NEW$"/>
						<input type="hidden" name="PARENTID" value="/ifs/{/ROOT/ACCESSRIGHTS/USERID}/"/>
						Filename: <input type="text" name="name" value="{/ROOT/REQUEST/NAME}"/>
				</xsl:when>
				<xsl:otherwise>
						<input type="hidden" name="ID" value="{ROOT/OBJECT/ID}"/>					
						<input type="hidden" name="PARENTID" value="{ROOT/PARENT/OBJECT/ID}"/>
						Filename: <input type="text" name="name" value="{/ROOT/OBJECT/NAME}"/>
				</xsl:otherwise>
			</xsl:choose>				</td><td>
						<div style="float: right; background-color: #ccc; color: #000; text-align: center; border: 1px solid #000; padding: 4px; font-size: 18px;  border: 1px solid #ccc;" onClick="document.getElementById('explorer2').style.display='none';">Cancel</div>
					</td><td>
						<div style="float: right; background-color: #ccc; color: #000; text-align: center; border: 1px solid #000; padding: 4px; font-size: 18px;  border: 1px solid #ccc;" onClick="document.ifs.submit();">Save</div>
					</td></tr></table></center>
					<br/>
		</div>




		<!--<xsl:call-template name="Show_EditHeader"/>-->


	<center><table id="app">
		<tr><td colspan="2">			<div style="width: 830px; height: 20px; background-image: url('{$ROOTDIR}/templates/ifs/banner2.png'); background-size: cover; background-position: top left; color: #fff; text-align: left; font-size: 15px; padding-left: 30px; padding-top: 3px;">IFS3.0 - <xsl:value-of select="concat($ROOTDIR, /ROOT/OBJECT/ID)"/></div></td></tr>
		<tr><td>



<div class="dropdown">
  <button class="dropbtn">File</button>
  <div class="dropdown-content">
    <!--<a href="{$ROOTDIR}/default.asp?mode=new&amp;Type=IFS&amp;ID=/ifs/{/ROOT/ACCESSRIGHTS/USERID}">New</a>-->
		<a href="{$ROOTDIR}/ifs?new=True">New</a>
    <a style="cursor: pointer;" onClick="document.getElementById('explorer').style.display='block';">Load</a>
    <xsl:if test="/ROOT/ACCESSRIGHTS/LOGGEDIN='True'">
    	<!--<a onClick="document.ifs.submit();" style="cursor: pointer;">Save</a>-->
    		<a style="cursor: pointer;" onClick="document.getElementById('explorer2').style.display='block';">Save</a>
    </xsl:if>

    <a href="#" style="opacity: 0.3">Save IFS</a>
    <a href="#" style="opacity: 0.3">Save IFS and JPG</a>
    <xsl:choose>
    	<xsl:when test="/ROOT/ACCESSRIGHTS/LOGGEDIN='True'">
			    <a href="{$ROOTDIR}{/ROOT/OBJECT/ID}login.htm" style="opacity: 0.3">Login</a>
			    <a href="{$ROOTDIR}{/ROOT/OBJECT/ID}logout.htm">Logout</a>
			</xsl:when>
				<xsl:otherwise>
							    <a href="{$ROOTDIR}{/ROOT/OBJECT/ID}login.htm">Login</a>
			    <a href="{$ROOTDIR}{/ROOT/OBJECT/ID}logout.htm" style="opacity: 0.3">Logout</a>
				</xsl:otherwise>
			</xsl:choose>			
    <a href="{$ROOTDIR}/templates/ifs/ifs3web.exe" style="cursor: pointer;" target="_blank">Download IFS3Web.exe</a>
    <a href="#" style="opacity: 0.3">Exit</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">Image</button>
  <div class="dropdown-content">
    <a href="#" style="opacity: 0.3">Export BMP</a>
    <a href="#" style="opacity: 0.3">Export JPG</a>
    <a href="#" style="opacity: 0.3">Create Animation</a>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">Samples</button>
  <div class="dropdown-content">
    <gethtml data="children" id="/ifs/samples/" mode="filelist" object="ifs"/>
  </div>
</div>
<div class="dropdown">
  <button class="dropbtn">Help</button>
  <div class="dropdown-content">
    <a href="#" style="opacity: 0.3">About Random IFS</a>
  </div>
</div>

	<xsl:variable name="r0"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/R0"><xsl:value-of select="/ROOT/REQUEST/R0"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/R0"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="s0"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/S0"><xsl:value-of select="/ROOT/REQUEST/S0"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/S0"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="theta0"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/THETA0"><xsl:value-of select="/ROOT/REQUEST/THETA0"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/THETA0"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="phi0"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PHI0"><xsl:value-of select="/ROOT/REQUEST/PHI0"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PHI0"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="e0"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/E0"><xsl:value-of select="/ROOT/REQUEST/E0"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/E0"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="f0"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/F0"><xsl:value-of select="/ROOT/REQUEST/F0"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/F0"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="prob0"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PROB0"><xsl:value-of select="/ROOT/REQUEST/PROB0"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PROB0"/></xsl:otherwise>
	</xsl:choose></xsl:variable>


	<xsl:variable name="r1"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/R1"><xsl:value-of select="/ROOT/REQUEST/R1"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/R1"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="s1"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/S1"><xsl:value-of select="/ROOT/REQUEST/S1"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/S1"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="theta1"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/THETA1"><xsl:value-of select="/ROOT/REQUEST/THETA1"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/THETA1"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="phi1"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PHI1"><xsl:value-of select="/ROOT/REQUEST/PHI1"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PHI1"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="e1"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/E1"><xsl:value-of select="/ROOT/REQUEST/E1"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/E1"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="f1"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/F1"><xsl:value-of select="/ROOT/REQUEST/F1"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/F1"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="prob1"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PROB1"><xsl:value-of select="/ROOT/REQUEST/PROB1"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PROB1"/></xsl:otherwise>
	</xsl:choose></xsl:variable>


	<xsl:variable name="r2"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/R2"><xsl:value-of select="/ROOT/REQUEST/R2"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/R2"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="s2"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/S2"><xsl:value-of select="/ROOT/REQUEST/S2"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/S2"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="theta2"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/THETA2"><xsl:value-of select="/ROOT/REQUEST/THETA2"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/THETA2"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="phi2"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PHI2"><xsl:value-of select="/ROOT/REQUEST/PHI2"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PHI2"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="e2"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/E2"><xsl:value-of select="/ROOT/REQUEST/E2"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/E2"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="f2"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/F2"><xsl:value-of select="/ROOT/REQUEST/F2"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/F2"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="prob2"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PROB2"><xsl:value-of select="/ROOT/REQUEST/PROB2"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PROB2"/></xsl:otherwise>
	</xsl:choose></xsl:variable>


	<xsl:variable name="r3"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/R3"><xsl:value-of select="/ROOT/REQUEST/R3"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/R3"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="s3"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/S3"><xsl:value-of select="/ROOT/REQUEST/S3"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/S3"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="theta3"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/THETA3"><xsl:value-of select="/ROOT/REQUEST/THETA3"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/THETA3"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="phi3"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PHI3"><xsl:value-of select="/ROOT/REQUEST/PHI3"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PHI3"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="e3"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/E3"><xsl:value-of select="/ROOT/REQUEST/E3"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/E3"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="f3"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/F3"><xsl:value-of select="/ROOT/REQUEST/F3"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/F3"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="prob3"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PROB3"><xsl:value-of select="/ROOT/REQUEST/PROB3"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PROB3"/></xsl:otherwise>
	</xsl:choose></xsl:variable>


	<xsl:variable name="r4"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/R4"><xsl:value-of select="/ROOT/REQUEST/R4"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/R4"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="s4"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/S4"><xsl:value-of select="/ROOT/REQUEST/S4"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/S4"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="theta4"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/THETA4"><xsl:value-of select="/ROOT/REQUEST/THETA4"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/THETA4"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="phi4"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PHI4"><xsl:value-of select="/ROOT/REQUEST/PHI4"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PHI4"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="e4"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/E4"><xsl:value-of select="/ROOT/REQUEST/E4"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/E4"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="f4"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/F4"><xsl:value-of select="/ROOT/REQUEST/F4"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/F4"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="prob4"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PROB4"><xsl:value-of select="/ROOT/REQUEST/PROB4"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PROB4"/></xsl:otherwise>
	</xsl:choose></xsl:variable>


	<xsl:variable name="r5"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/R5"><xsl:value-of select="/ROOT/REQUEST/R5"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/R5"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="s5"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/S5"><xsl:value-of select="/ROOT/REQUEST/S5"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/S5"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="theta5"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/THETA5"><xsl:value-of select="/ROOT/REQUEST/THETA5"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/THETA5"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="phi5"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PHI5"><xsl:value-of select="/ROOT/REQUEST/PHI5"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PHI5"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="e5"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/E5"><xsl:value-of select="/ROOT/REQUEST/E5"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/E5"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="f5"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/F5"><xsl:value-of select="/ROOT/REQUEST/F5"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/F5"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="prob5"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PROB5"><xsl:value-of select="/ROOT/REQUEST/PROB5"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PROB5"/></xsl:otherwise>
	</xsl:choose></xsl:variable>


	<xsl:variable name="r6"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/R6"><xsl:value-of select="/ROOT/REQUEST/R6"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/R6"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="s6"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/S6"><xsl:value-of select="/ROOT/REQUEST/S6"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/S6"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="theta6"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/THETA6"><xsl:value-of select="/ROOT/REQUEST/THETA6"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/THETA6"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="phi6"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PHI6"><xsl:value-of select="/ROOT/REQUEST/PHI6"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PHI6"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="e6"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/E6"><xsl:value-of select="/ROOT/REQUEST/E6"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/E6"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="f6"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/F6"><xsl:value-of select="/ROOT/REQUEST/F6"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/F6"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="prob6"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PROB6"><xsl:value-of select="/ROOT/REQUEST/PROB6"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PROB6"/></xsl:otherwise>
	</xsl:choose></xsl:variable>


	<xsl:variable name="r7"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/R7"><xsl:value-of select="/ROOT/REQUEST/R7"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/R7"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="s7"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/S7"><xsl:value-of select="/ROOT/REQUEST/S7"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/S7"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="theta7"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/THETA7"><xsl:value-of select="/ROOT/REQUEST/THETA7"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/THETA7"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="phi7"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PHI7"><xsl:value-of select="/ROOT/REQUEST/PHI7"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PHI7"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="e7"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/E7"><xsl:value-of select="/ROOT/REQUEST/E7"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/E7"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="f7"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/F7"><xsl:value-of select="/ROOT/REQUEST/F7"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/F7"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="prob7"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PROB7"><xsl:value-of select="/ROOT/REQUEST/PROB7"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PROB7"/></xsl:otherwise>
	</xsl:choose></xsl:variable>


	<xsl:variable name="r8"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/R8"><xsl:value-of select="/ROOT/REQUEST/R8"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/R8"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="s8"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/S8"><xsl:value-of select="/ROOT/REQUEST/S8"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/S8"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="theta8"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/THETA8"><xsl:value-of select="/ROOT/REQUEST/THETA8"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/THETA8"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="phi8"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PHI8"><xsl:value-of select="/ROOT/REQUEST/PHI8"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PHI8"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="e8"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/E8"><xsl:value-of select="/ROOT/REQUEST/E8"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/E8"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="f8"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/F8"><xsl:value-of select="/ROOT/REQUEST/F8"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/F8"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="prob8"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PROB8"><xsl:value-of select="/ROOT/REQUEST/PROB8"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PROB8"/></xsl:otherwise>
	</xsl:choose></xsl:variable>

	<xsl:variable name="r9"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/R9"><xsl:value-of select="/ROOT/REQUEST/R9"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/R9"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="s9"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/S9"><xsl:value-of select="/ROOT/REQUEST/S9"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/S9"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="theta9"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/THETA9"><xsl:value-of select="/ROOT/REQUEST/THETA9"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/THETA9"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="phi9"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PHI9"><xsl:value-of select="/ROOT/REQUEST/PHI9"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PHI9"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="e9"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/E9"><xsl:value-of select="/ROOT/REQUEST/E9"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/E9"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="f9"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/F9"><xsl:value-of select="/ROOT/REQUEST/F9"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/F9"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="prob9"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/PROB9"><xsl:value-of select="/ROOT/REQUEST/PROB9"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/PROB9"/></xsl:otherwise>
	</xsl:choose></xsl:variable>


			<table width="100%">
				<tr>
					<td>r</td>
					<td>s</td>
					<td>theta</td>
					<td>phi</td>
					<td>e</td>
					<td>f</td>
					<td>prob</td>
				</tr>

				<tr>
					<td><input type="text" onClick="this.select();" name="r0" id="r0" value="{$r0}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="s0" id="s0" value="{$s0}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="theta0" id="theta0" value="{$theta0}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="phi0" id="phi0" value="{$phi0}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="e0" id="e0" value="{$e0}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="f0" id="f0" value="{$f0}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="prob0" id="p0" value="{$prob0}" size="3"/></td>
				</tr>


				<tr>
					<td><input type="text" onClick="this.select();" name="r1" id="r1" value="{$r1}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="s1" id="s1" value="{$s1}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="theta1" id="theta1" value="{$theta1}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="phi1" id="phi1" value="{$phi1}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="e1" id="e1" value="{$e1}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="f1" id="f1" value="{$f1}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="prob1" id="p1" value="{$prob1}" size="3"/></td>
				</tr>


				<tr>
					<td><input type="text" onClick="this.select();" name="r2" id="r2" value="{$r2}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="s2" id="s2" value="{$s2}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="theta2" id="theta2" value="{$theta2}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="phi2" id="phi2" value="{$phi2}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="e2" id="e2" value="{$e2}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="f2" id="f2" value="{$f2}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="prob2" id="p2" value="{$prob2}" size="3"/></td>
				</tr>


				<tr>
					<td><input type="text" onClick="this.select();" name="r3" id="r3" value="{$r3}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="s3" id="s3" value="{$s3}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="theta3" id="theta3" value="{$theta3}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="phi3" id="phi3" value="{$phi3}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="e3" id="e3" value="{$e3}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="f3" id="f3" value="{$f3}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="prob3" id="p3" value="{$prob3}" size="3"/></td>
				</tr>


				<tr>
					<td><input type="text" onClick="this.select();" name="r4" id="r4" value="{$r4}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="s4" id="s4" value="{$s4}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="theta4" id="theta4" value="{$theta4}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="phi4" id="phi4" value="{$phi4}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="e4" id="e4" value="{$e4}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="f4" id="f4" value="{$f4}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="prob4" id="p4" value="{$prob4}" size="3"/></td>
				</tr>


				<tr>
					<td><input type="text" onClick="this.select();" name="r5" id="r5" value="{$r5}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="s5" id="s5" value="{$s5}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="theta5" id="theta5" value="{$theta5}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="phi5" id="phi5" value="{$phi5}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="e5" id="e5" value="{$e5}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="f5" id="f5" value="{$f5}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="prob5" id="p5" value="{$prob5}" size="3"/></td>
				</tr>


				<tr>
					<td><input type="text" onClick="this.select();" name="r6" id="r6" value="{$r6}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="s6" id="s6" value="{$s6}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="theta6" id="theta6" value="{$theta6}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="phi6" id="phi6" value="{$phi6}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="e6" id="e6" value="{$e6}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="f6" id="f6" value="{$f6}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="prob6" id="p6" value="{$prob6}" size="3"/></td>
				</tr>


				<tr>
					<td><input type="text" onClick="this.select();" name="r7" id="r7" value="{$r7}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="s7" id="s7" value="{$s7}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="theta7" id="theta7" value="{$theta7}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="phi7" id="phi7" value="{$phi7}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="e7" id="e7" value="{$e7}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="f7" id="f7" value="{$f7}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="prob7" id="p7" value="{$prob7}" size="3"/></td>
				</tr>


				<tr>
					<td><input type="text" onClick="this.select();" name="r8" id="r8" value="{$r8}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="s8" id="s8" value="{$s8}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="theta8" id="theta8" value="{$theta8}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="phi8" id="phi8" value="{$phi8}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="e8" id="e8" value="{$e8}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="f8" id="f8" value="{$f8}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="prob8" id="p8" value="{$prob8}" size="3"/></td>
				</tr>

				<tr>
					<td><input type="text" onClick="this.select();" name="r9" id="r9" value="{$r9}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="s9" id="s9" value="{$s9}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="theta9" id="theta9" value="{$theta9}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="phi9" id="phi9" value="{$phi9}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="e9" id="e9" value="{$e9}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="f9" id="f9" value="{$f9}" size="3"/></td>
					<td><input type="text" onClick="this.select();" name="prob9" id="p9" value="{$prob9}" size="3"/></td>
				</tr>



			</table>

			<br/>

	<xsl:variable name="iterations"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/ITERATIONS"><xsl:value-of select="/ROOT/REQUEST/ITERATIONS"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/ITERATIONS"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="points"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/POINTS"><xsl:value-of select="/ROOT/REQUEST/POINTS"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/POINTS"/></xsl:otherwise>
	</xsl:choose></xsl:variable>



			<center>
			<table><tr>
			 <td>Interations <input type="text" onClick="this.select();" name="iterations" value="{$iterations}" size="3"/></td>
			 <td><table><tr><td style="padding: 0px;"><img src="/templates/ifs/up.png"/></td></tr><tr><td style="padding: 0px;"><img src="/templates/ifs/down.png"/></td></tr></table></td>
			 <td>Points</td>
			 <td><input type="text" onClick="this.select();" name="points" value="{$points}" size="6"/></td>
			</tr></table>


			<input class="ifs_button" type="button" value="Run" onClick="run(true);"/>
			<input class="ifs_button" type="button" value="Run Infinite Iterations" style="padding: 5px 10px;" onClick="run(false);"/>

		</center>

		</td><td>
			<canvas id="image" width="360" height="360" style="border: 1px solid #404040; background-color: #fff;"/>
			<br/><br/>


	<xsl:variable name="x1"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/X1"><xsl:value-of select="/ROOT/REQUEST/X1"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/X1"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="y1"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/Y1"><xsl:value-of select="/ROOT/REQUEST/Y1"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/Y1"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="x2"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/X2"><xsl:value-of select="/ROOT/REQUEST/X2"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/X2"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="y2"><xsl:choose>
		<xsl:when test="/ROOT/REQUEST/Y2"><xsl:value-of select="/ROOT/REQUEST/Y2"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="/ROOT/OBJECT/Y2"/></xsl:otherwise>
	</xsl:choose></xsl:variable>



			X <input type="text" onClick="this.select();" name="x1" value="{$x1}" size="4"/> <input type="text" onClick="this.select();" name="x2" value="{$x2}" size="4"/>
			Y <input type="text" onClick="this.select();" name="y1" value="{$y1}" size="4"/> <input type="text" onClick="this.select();" name="y2" value="{$y2}" size="4"/>
		</td></tr>
	</table></center>


<br/><br/>

		<textarea name="text" style="width: 100%; height: 50px; display: none;"><xsl:value-of select="/ROOT/OBJECT/TEXT"/></textarea>

	</form>

<script><![CDATA[
   	var SX1=-1.02, SX2=1.02;
   	var SY1=-1.02, SY2=1.02;
   	var r=[], s=[], theta=[], e=[], f=[], p=[], phi=[];

	function drawPoint(context, x, y) {
		//console.log(x + ", " + y);
      	// to increase smoothing for numbers with decimal part
		var pointX = Math.round(x);
        var pointY = Math.round(y);

        //alert(pointX +  " " + pointY);
  
        context.beginPath();
        context.fillStyle = '#000';
      	context.fillRect(pointX, pointY, 1, 1);
        context.fill();
    }

    function clear_canvas() {
	    var canvas = document.querySelector('#image');
	    var context = canvas.getContext('2d');
		context.clearRect(0, 0, canvas.width, canvas.height);
    }

    function run(countiterations) {
    	//alert("sorry, rendering doesn't work yet.");
    	clear_canvas();
	    var canvas = document.querySelector('#image');
	    var context = canvas.getContext('2d');

    	r[0]=getNumber("r0"); s[0]=getNumber("s0"); theta[0]=getNumber("theta0");
    	e[0]=getNumber("e0"); f[0]=getNumber("f0"); p[0]=getNumber("p0"); phi[0]=getNumber("phi0");
    	r[1]=getNumber("r1"); s[1]=getNumber("s1"); theta[1]=getNumber("theta1");
    	e[1]=getNumber("e1"); f[1]=getNumber("f1"); p[1]=getNumber("p1"); phi[1]=getNumber("phi1");
    	r[2]=getNumber("r2"); s[2]=getNumber("s2"); theta[2]=getNumber("theta2");
    	e[2]=getNumber("e2"); f[2]=getNumber("f2"); p[2]=getNumber("p2"); phi[2]=getNumber("phi2");
    	r[3]=getNumber("r3"); s[3]=getNumber("s3"); theta[3]=getNumber("theta3");
    	e[3]=getNumber("e3"); f[3]=getNumber("f3"); p[3]=getNumber("p3"); phi[3]=getNumber("phi3");
    	r[4]=getNumber("r4"); s[4]=getNumber("s4"); theta[4]=getNumber("theta4");
    	e[4]=getNumber("e4"); f[4]=getNumber("f4"); p[4]=getNumber("p4"); phi[4]=getNumber("phi4");
    	r[5]=getNumber("r5"); s[5]=getNumber("s5"); theta[5]=getNumber("theta5");
    	e[5]=getNumber("e5"); f[5]=getNumber("f5"); p[5]=getNumber("p5"); phi[5]=getNumber("phi5");
    	r[6]=getNumber("r6"); s[6]=getNumber("s6"); theta[6]=getNumber("theta6");
    	e[6]=getNumber("e6"); f[6]=getNumber("f6"); p[6]=getNumber("p6"); phi[6]=getNumber("phi6");
    	r[7]=getNumber("r7"); s[7]=getNumber("s7"); theta[7]=getNumber("theta7");
    	e[7]=getNumber("e7"); f[7]=getNumber("f7"); p[7]=getNumber("p7"); phi[7]=getNumber("phi7");
    	r[8]=getNumber("r8"); s[8]=getNumber("s8"); theta[8]=getNumber("theta8");
    	e[8]=getNumber("e8"); f[8]=getNumber("f8"); p[8]=getNumber("p8"); phi[8]=getNumber("phi8");

    	// get the scales
   	  if (document.ifs.x2.value * 1 > document.ifs.x1.value * 1 && document.ifs.y2.value * 1 > document.ifs.y1.value * 1) {
	    	SX1=document.ifs.x1.value; SX2=document.ifs.x2.value;
	    	SY1=document.ifs.y1.value; SY2=document.ifs.y2.value;
	    }

	    if (document.ifs.points.value == "") {
	        document.ifs.points.value = "10000"
	    }
	    if (document.ifs.iterations.value == "") {
	        document.ifs.iterations.value = "5"
	    }
    	points = document.ifs.points.value;
    	iterations = document.ifs.iterations.value;

	    var canvas = document.querySelector('#image');
	    var context = canvas.getContext('2d');

    	/*for (i=0; i!=points; i++) {
    		x = Math.random() * 360;
    		y = Math.random() * 360;
    		drawPoint(context, x, y);
    	}*/

    	// figure out how many transforms for the probability
	    countTransforms = 0;
		for (i=0; i!=9; i++) {
		    if (r[i] != "" || s[i] != "" || theta[i] != "" || e[i] != "" || f[i] != "") { 
		    	countTransforms++;
		    }
		}

		// These have been moved out of the function for faster processing later
		const rcost=[], rsint=[], scosphi=[], ssinphi=[], scost=[], ssint=[];
	    for (z=0; z!=9; z++) {
	        rcost[z] = r[z] * Math.cos(theta[z] * Math.PI / 180);
	        rsint[z] = r[z] * Math.sin(theta[z] * Math.PI / 180);
	        
	        // this has been changed to use phi
	        scosphi[z] = s[z] * Math.cos(phi[z] * Math.PI / 180);
	        ssinphi[z] = s[z] * Math.sin(phi[z] * Math.PI / 180);
	        
	        scost[z] = s[z] * Math.cos(theta[z] * Math.PI / 180);
	        ssint[z] = s[z] * Math.sin(theta[z] * Math.PI / 180);


	        /*console.log("r " + r[z]);
	        console.log("theta " + theta[z]);
	        console.log("rcost " + rcost[z]);
	        console.log("scosphi " + scosphi[z]);
	        console.log("s " + s[z]);
	        console.log("phi " + phi[z]);
	        console.log("ssinphi " + ssinphi[z]);
	        console.log("scost " + scost[z]);
	        console.log("theta " + theta[z]);
	        console.log("ssint " + ssint[z]);*/
	    }

	    for (z=0; z!=9; z++) {
	    	if ( !isNumber(p[z]) ) { p[z]=0; }
	    }

	    // Get the total probability count
	    var totalprob = p[0] + p[1] + p[2] + p[3] + p[4] + p[5] + p[6] + p[7] + p[8];
	    if (totalprob==0) {
		    for (z=0; z!=9; z++) {
		    	if (r[z]!='' || s[z]!='' || theta[z]!='' || e[z]!='' || f[z]!='' || p[z]!='' || phi[z]!='') {
		    		p[z] = 1;
		    	}
		    }
	    }
	    totalprob = p[0] + p[1] + p[2] + p[3] + p[4] + p[5] + p[6] + p[7] + p[8];

	    // this is only used for random
	    X1 = 0.5; Y1 = 0.5;
	    const adjustedpi = Math.PI / 180;

	    //if (QuickRender) {
	    //    points = points / 3
	    //}

	    const progresssteps = 2000;
	    const progresspoints = 3800 / points * progresssteps;

	    if (countiterations) {
	        const iterations = document.ifs.iterations.value;
	    } else {
  	        const iterations = 1;
	    }

	    pixels = 360;
        const pixelwidth = pixels;
        const pixelheight = pixels;
        pixelscalex = pixelwidth / (SX2 - SX1);
        pixelscaley = pixelheight / (SY2 - SY1);

        for (c=0; c < (points / progresssteps); c++ ) {
            //Progress.Width = c * progresspoints

	        for (cc=0; cc < progresssteps; cc++) {
                if (countiterations) {
                    x1 = Math.random();
                    Y1 = x1 = Math.random();
                    X = X1; Y = Y1;
                }
		        for (i=0; i < iterations; i++) {
	        		// pick one of the transformations rows
                    if (totalprob == 0) {
                        // equal probabilities
                        z = Math.round(9 * Math.random + 1);
                    } else {
                    	const currentprob =  totalprob * Math.random();
                    	prob_accum = 0;
                    	for (z_test=0; z_test<9 && currentprob > prob_accum; z_test++) {                           		
                    		z=z_test;
                    		prob_accum += p[z_test];
                    	}
                    }

					// run the transformation on that row                        
                    X = X1 * rcost[z] - Y1 * ssinphi[z] + e[z];
                    Y = X1 * rsint[z] + Y1 * scosphi[z] + f[z];
                    X1 = X; Y1 = Y;
            		//console.log(X + ", " + Y);
                }
                drawPoint(context, (X-SX1) * pixelscalex , (SY2-Y) * pixelscaley );
            }
        }
    }           

function isNumber(value) 
{
   return typeof value === 'number' && isFinite(value);
}

function getNumber(id) {
	x = document.getElementById(id);
 	value = x.value * 1;
 	if (! isNumber(value) ) {
 		return 0;
 	} else {
 		return value;
 	}
}

function exit( status ) {
    // http://kevin.vanzonneveld.net
    // +   original by: Brett Zamir (http://brettz9.blogspot.com)
    // +      input by: Paul
    // +   bugfixed by: Hyam Singer (http://www.impact-computing.com/)
    // +   improved by: Philip Peterson
    // +   bugfixed by: Brett Zamir (http://brettz9.blogspot.com)
    // %        note 1: Should be considered expirimental. Please comment on this function.
    // *     example 1: exit();
    // *     returns 1: null

    var i;

    if (typeof status === 'string') {
        alert(status);
    }

    window.addEventListener('error', function (e) {e.preventDefault();e.stopPropagation();}, false);

    var handlers = [
        'copy', 'cut', 'paste',
        'beforeunload', 'blur', 'change', 'click', 'contextmenu', 'dblclick', 'focus', 'keydown', 'keypress', 'keyup', 'mousedown', 'mousemove', 'mouseout', 'mouseover', 'mouseup', 'resize', 'scroll',
        'DOMNodeInserted', 'DOMNodeRemoved', 'DOMNodeRemovedFromDocument', 'DOMNodeInsertedIntoDocument', 'DOMAttrModified', 'DOMCharacterDataModified', 'DOMElementNameChanged', 'DOMAttributeNameChanged', 'DOMActivate', 'DOMFocusIn', 'DOMFocusOut', 'online', 'offline', 'textInput',
        'abort', 'close', 'dragdrop', 'load', 'paint', 'reset', 'select', 'submit', 'unload'
    ];

    function stopPropagation (e) {
        e.stopPropagation();
        // e.preventDefault(); // Stop for the form controls, etc., too?
    }
    for (i=0; i < handlers.length; i++) {
        window.addEventListener(handlers[i], function (e) {stopPropagation(e);}, true);
    }

    if (window.stop) {
        window.stop();
    }

    throw '';
}

run(false);

]]>
</script>


<script>
  /*var canvas = document.querySelector('#image');
  var context = canvas.getContext('2d');
	drawPoint(context,10,10);
	drawPoint(context,11,10);
	drawPoint(context,12,10);
	drawPoint(context,13,10);
	drawPoint(context,14,10);
	drawPoint(context,15,10);*/
</script>

<!--<div style="text-align: left;">
<xsl:for-each select="/ROOT/CHILDREN/OBJECT">
	<xsl:sort select="UNIQUENAME"/>
	<a href="{$ROOTDIR}{ID}"><xsl:value-of select="UNIQUENAME"/></a><br/>
</xsl:for-each>
</div>
<gethtml data="children" id="/ifs/" mode="default" object="default"/>
-->

	<xsl:if test="/ROOT/ACCESSRIGHTS/CANEDIT='True' and /ROOT/REQUEST/NAME[not(.='')]">
		<script>document.ifs.submit();</script>
	</xsl:if>

</xsl:template>

<xsl:template match="/">
	<xsl:call-template name="ShowFramework"/>
</xsl:template>

</xsl:stylesheet>

	