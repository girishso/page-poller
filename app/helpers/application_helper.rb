module ApplicationHelper
  def srcdoc
    <<-SRC
<!DOCTYPE html>
<html lang="en-us" data-tagid="0">
<head data-tagid="1"><base href="http://www.w3schools.com" />
<meta data-tagid="2" charset="utf-8">
<title data-tagid="3">W3Schools Online Web Tutorials</title>
<link data-tagid="4" href="favicon.ico" type="image/x-icon" rel="icon">
<meta content="HTML,CSS,DOM,JavaScript,jQuery,XML,AJAX,ASP.NET,W3C,tutorials,programming,learning,guide,primer,lessons,school,howto,reference,examples,source code,demos,color tables,Cascading Style Sheets,Active Server Pages,Programming,Development.Webbuilder,Sitebuilder,Webmaster" data-tagid="5" name="Keywords">
<meta content="HTML CSS JavaScript jQuery AJAX XML ASP.NET SQL Tutorials References Examples" data-tagid="6" name="Description">
<meta content="width=device-width" data-tagid="7" name="viewport">
<!-- begin_ascomment:<script data-tagid="8">:end_ascomment --><!-- begin_ascomment: 
function searchfield_focus(obj)
{
obj.style.color=""
obj.style.fontStyle=""
if (obj.value=="Search w3schools.com")
	{
	obj.value=""
	}
}
:end_ascomment --><!-- begin_ascomment:</script>:end_ascomment -->
<!-- begin_ascomment:<script data-tagid="9">:end_ascomment --><!-- begin_ascomment:
  (function() {
    var cx = '012971019331610648934:m2tou3_miwy';
    var gcse = document.createElement('script'); gcse.type = 'text/javascript'; gcse.async = true;
    gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
        '//www.google.com/cse/cse.js?cx=' + cx;
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(gcse, s);
  })();

  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-3855518-1', 'auto');
  ga('require', 'displayfeatures');
  ga('send', 'pageview');
:end_ascomment --><!-- begin_ascomment:</script>:end_ascomment -->
<style data-tagid="10" type="text/css"> 
html{overflow-y:scroll;}

body,p,input {font-family:verdana,helvetica,arial,sans-serif;}

img {border:0;}

body {font-size:14px;color:#555555;background-color:#f1f1f1;margin:0px;}

div {width:100%;margin:0;padding:0;}

#top {width:1200px;height:170px;margin:auto;background-image:url('w3frontimage.png');background-repeat:no-repeat;}

div.gsc-control-cse {padding:0;background-color:transparent;border:none;}
#searchSection {width:320px;margin-top:110px;float:right;}
td.gsc-search-button input.gsc-search-button {border:none;border-color:#555555;background-color:#555555;}

div.box1 {float:left;width:310px;margin-top:40px;}
div.box3 {float:left;width:310px;margin-top:30px;}

div.boxDemo {float:left;width:456px;background-color:#f1f1f1;border:1px solid #e3e3e3;padding:20px;padding-bottom:10px;text-align:center;margin-top:40px;margin-right:60px;margin-left:15px;}
div.boxDemo h2 {font-size:28px;margin:0px;}
div.boxDemo a.btn {text-align:center;width:400px;float:left;margin-left:20px;background-color:#ffffff;}
div.boxDemo a.btn:hover {background-color:#555555;}

div.boxRef {float:right;width:295px;}
div.boxRef h1 {font-size:32px;margin-top:30px;margin-bottom:10px;}
div.boxRef a:before {content:"\00BB  ";font-weight:bold;color:#ff4800;}

div.image {margin-left:15px;box-shadow: 0px 10px 20px 3px #d3d3d3;width:100px;height:80px;border-radius:4px;float:left;background-image:url('/images/w3logo.png');background-repeat:no-repeat;background-position:center;}

div.box1 h1 {font-size:32px;margin:0px;float:left;padding-left:10px;padding-top:18px;height:80px;}
div.box1 h2 {margin:0px;float:left;padding-left:10px;padding-top:18px;}

a.box {color:#555555;}
a.btn {display:block;width:170px;margin-bottom:10px;margin-left:15px;background-color:#f1f1f1;border:1px solid #e3e3e3;padding:8px;border-radius:4px;font-size:16px;color:#555555;text-decoration:none;}
a.btn:hover {background-color:#555555;color:#ffffff;border:1px solid #555555;}

.box3 a {margin-top:14px;margin-bottom:30px;}

.boxRef a {text-decoration:none;font-size:14px;color:#555555;line-height:20px;}
.boxRef a:hover {text-decoration:underline;}
.boxRef a.box:before {content:"";}
.boxRef a.box:hover {text-decoration:none;}
.boxRef h1 {height:28px;padding-top:9px;}

h1, h2, h3 {
	font-weight:normal;font-family:"Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
}

h1.js {display:none;}
#bottomContainer {margin-top:15px;}
.bottom {width:1200px;margin:auto;margin-top:0px;}
.bottom a {color:#555555;text-decoration:none;}
.bottom a:hover {text-decoration:underline;}
.bottom div {text-align:center;font-size:11px;}

#page {width:1160px;margin:auto;background-color:#ffffff;padding-left:40px;padding-bottom:40px;box-shadow: 0px 10px 20px 3px #d3d3d3;}

#leftcol {width:200px;float:left;margin-top:30px;margin-right:5px;}
#leftcol h3 {font-size:17px;margin-bottom:8px;}
#leftcol a:before {content:"\00BB  ";font-weight:bold;color:#ff4800;}
#leftcol a {text-decoration:none;line-height:20px;font-size:14px;color:#555555;}
#leftcol a:hover {text-decoration:underline;}

#colorpickerContainer div {width:80px;height:70px;margin-left:41px;margin-top:14px;background-image:url('/images/colorpicker.gif');background-repeat:no-repeat;}
#colorpickerContainer h3 {padding-left:33px;}
a.colorpicker {text-decoration:none;color:#555555;}

#maincol {width:934px;float:left;}

div.about {word-spacing:6px;font-size:10px;padding-top:15px;float:left;width:340px;text-align:right;}
div.about a {color:#555555;text-decoration:none;}
div.about a:hover {text-decoration:underline;}

#fblikeframe {display:none;text-align:center;}
#popupframe {position:fixed;height:100%;width:100%;top:0;left:0;background-color:#000000;opacity:0.5;}
#popupDIV {position:fixed;height:40%;width:40%;min-width:400px;min-height:400px;top:30%;left:30%;background-color:#ffffff;}

.tutlogo {overflow:auto;}
#bottom1 {width:1160px;margin:auto;height:55px;padding-left:20px;padding-right:20px;}
#bottomLogo {width:520px;float:left;padding-top:6px;}
#fblikeContainer {width:260px;float:left;margin-top:8px;}
/* Styles for smaller devices*/
#smallnavContainer {display:none;}

@media only screen and (max-device-width: 768px) {
body {background-color:#ffffff;}
#top {width:748px;height:170px;margin:initial;margin-top:50px;background-image:url('w3frontimage.png');background-repeat:no-repeat;background-position:-30px 0;}
#page {width:748px;margin:0;background-color:#ffffff;padding-left:10px;padding-bottom:0px;margin-bottom:230px;box-shadow:none;}
#leftcol {margin-top:15px;}
#maincol {width:540px;float:left;}
h1.js {display:block;}
h1.javascript {display:none;}
div.box1 {float:left;width:540px;margin-top:20px;margin-bottom:0;}
div.box1 h1 {margin-left:20px;}
a.btn {margin-left:0;width:220px;}
.tutlogo {width:290px;float:left;overflow:auto;}
div.image {margin-bottom:30px;}
.tutbuttons {width:180px;float:left;}
div.boxDemo {margin-left:0;width:486px;font-size:70%;}
div.boxDemo a.btn {text-align:center;width:300px;float:left;margin-left:80px;background-color:#ffffff;}
div.box3 {float:left;width:250px;margin-top:30px;}
.box3 a {margin-top:14px;margin-bottom:30px;}
.box3 a.btn {margin-left:0;}
div.boxRef {float:none;position:absolute;left:10px;top:1100px;width:195px;}
div.boxRef h1 {font-size:17px;height:initial;padding-top:initial;}
#colorpickerContainer div {width:100px;height:70px;margin-left:120px;margin-top:14px;background-image:url('/images/colorpicker.gif');background-repeat:no-repeat;}
#colorpickerContainer h3 {padding-left:108px;}
#bottomContainer {width:748px;background-color:#f1f1f1;border-top:1px solid #e3e3e3;padding:10px;}
#bottom1 {width:748px;margin:initial;height:35px;padding-left:0;padding-right:0;}
#bottomLogo {width:300px;float:left;padding-top:6px;margin-left:10px;}
#fblikeContainer {width:100px;float:left;margin-top:8px;}
div.about {width:280px;}
.bottom {width:740px;margin:initial;padding-top:10px;}
.bottom div {text-align:center;font-size:9px;}
#searchSection {display:none;position:fixed;top:0;background-color:#aaaaaa;height:70px;padding:30px;opacity:0.99;width:710px;float:none;margin-top:49px;}
/* Navbar for smaller devices*/
#smallnavContainer {width:770px;display:block;position:fixed;z-index:1000;top:0;height:50px;background-color:#aaaaaa;opacity:0.99;xwidth:100%;}
#smallnav {height:44px;margin-top:6px;}
#smallnav #menuSearchDIV {position:relative;float:right;width:50px;height:44px;margin-right:10px;cursor: pointer;background-image: url('/images/navsearch.gif');background-repeat: no-repeat;	background-position: 0 6px;}
#closeSearchBTN {display:none;position:absolute;top:60px;right:10px;background-color:#000000;color:#d3d3d3;width:15px;height:19px;font-weight:bold;padding-left:5px;padding-top:1px;border-radius:4px;}
}

</style>
</head>
<body data-tagid="11">
<div data-tagid="12" id="smallnavContainer">
	<div data-tagid="13" id="smallnav">
		<div data-tagid="14" id="closeSearchBTN" onclick="">X</div>
		<div data-tagid="15" id="menuSearchDIV"></div>
	</div>
</div>
<div data-tagid="16" id="top">
	<div data-tagid="17" id="searchSection">
		<div style="font-size:11px;font-style:italic;" data-tagid="18">Search w3schools.com:</div>
		<div data-tagid="19" class="gcse-search"></div>
	</div>
</div>
<div data-tagid="20" id="page">
	<div data-tagid="21" id="leftcol">
		<h3 style="margin-top:0px;" data-tagid="22">HTML/CSS</h3>
		<a data-tagid="23" href="html/default.asp" target="_top">Learn HTML</a><br data-tagid="24">
		<a data-tagid="25" href="html/html5_intro.asp" target="_top">Learn HTML5</a><br data-tagid="26">				
		<a data-tagid="27" href="css/default.asp" target="_top">Learn CSS</a><br data-tagid="28">
		<a data-tagid="29" href="css/css3_intro.asp" target="_top">Learn CSS3</a><br data-tagid="30">
		<a data-tagid="31" href="bootstrap/default.asp" target="_top">Learn Bootstrap</a><br data-tagid="32">		
		<h3 data-tagid="33">JavaScript</h3>
		<a data-tagid="34" href="js/default.asp" target="_top">Learn JavaScript</a><br data-tagid="35">
		<a data-tagid="36" href="jquery/default.asp" target="_top">Learn jQuery</a><br data-tagid="37">
		<a data-tagid="38" href="jquerymobile/default.asp" target="_top">Learn jQueryMobile</a><br data-tagid="39">				
		<a data-tagid="40" href="angular/default.asp" target="_top">Learn AngularJS</a><br data-tagid="41">				
		<a data-tagid="42" href="ajax/default.asp" target="_top">Learn AJAX</a><br data-tagid="43">
		<a data-tagid="44" href="json/default.asp" target="_top">Learn JSON</a><br data-tagid="45">
		<a data-tagid="46" href="googleAPI/default.asp" target="_top">Learn Google Maps</a><br data-tagid="47">
		<h3 data-tagid="48">Server Side</h3>
		<a data-tagid="49" href="sql/default.asp" target="_top">Learn SQL</a><br data-tagid="50">
		<a data-tagid="51" href="php/default.asp" target="_top">Learn PHP</a><br data-tagid="52">
		<a data-tagid="53" href="asp/default.asp" target="_top">Learn ASP</a><br data-tagid="54">
		<a data-tagid="55" href="aspnet/default.asp" target="_top">Learn ASP.NET</a><br data-tagid="56">
		<a data-tagid="57" href="vbscript/default.asp" target="_top">Learn VBScript</a><br data-tagid="58">
		<a data-tagid="59" href="appml/default.asp" target="_top">Learn AppML</a><br data-tagid="60">					
		<h3 data-tagid="61">XML Tutorials</h3>
		<a data-tagid="62" href="xml/default.asp" target="_top">Learn XML</a><br data-tagid="63">					
		<a data-tagid="64" href="dtd/default.asp" target="_top">Learn DTD</a><br data-tagid="65">	
		<a data-tagid="66" href="schema/default.asp" target="_top">Learn Schema</a><br data-tagid="67">
		<a data-tagid="68" href="dom/default.asp" target="_top">Learn XML DOM</a><br data-tagid="69">
		<a data-tagid="70" href="xpath/default.asp" target="_top">Learn XPath</a><br data-tagid="71">				
		<a data-tagid="72" href="xsl/default.asp" target="_top">Learn XSLT</a><br data-tagid="73">					
		<a data-tagid="74" href="xquery/default.asp" target="_top">Learn XQuery</a><br data-tagid="75">					
		<a data-tagid="76" href="xslfo/default.asp" target="_top">Learn XSL-FO</a><br data-tagid="77">															
		<a data-tagid="78" href="svg/default.asp" target="_top">Learn SVG</a><br data-tagid="79">					
		<a data-tagid="80" href="rss/default.asp" target="_top">Learn RSS</a><br data-tagid="81">										
		<a data-tagid="82" href="webservices/default.asp" target="_top">Learn WSDL</a><br data-tagid="83">
		<h3 data-tagid="84">WEB Building</h3>
		<a data-tagid="85" href="website/default.asp" target="_top">Web Building</a><br data-tagid="86">
		<a data-tagid="87" href="browsers/default.asp" target="_top">Web Statistics</a><br data-tagid="88">					
		<a data-tagid="89" href="website/web_validate.asp" target="_top">Web Validation</a><br data-tagid="90">							
		<a data-tagid="91" href="cert/default.asp" target="_top">Web Certificates</a><br data-tagid="92">							
	</div>
	<div data-tagid="93" id="maincol">
		<div data-tagid="94" class="box1">
			<div data-tagid="95" class="tutlogo">
				<a data-tagid="96" href="html/default.asp" class="box" target="_top">
					<div style="background-color:#87C71D;" class="image" data-tagid="97"></div>
					<h1 data-tagid="98">HTML</h1>
				</a>
			</div>
			<div data-tagid="99" class="tutbuttons">
				<a data-tagid="100" href="html/default.asp" class="btn" target="_top">HTML Tutorial</a>
				<a data-tagid="101" href="tags/default.asp" class="btn" target="_top">HTML Tag Reference</a>
			</div>
		</div>
		<div data-tagid="102" class="box1">
			<div data-tagid="103" class="tutlogo">
				<a data-tagid="104" href="css/default.asp" class="box" target="_top">		
					<div style="background-color:#07B3D3;" class="image" data-tagid="105"></div>
					<h1 data-tagid="106">CSS</h1>
				</a>
			</div>
			<div data-tagid="107" class="tutbuttons">
				<a data-tagid="108" href="css/default.asp" class="btn" target="_top">CSS Tutorial</a>
				<a data-tagid="109" href="cssref/default.asp" class="btn" target="_top">CSS Reference</a>			
			</div>
		</div>
		<div data-tagid="110" class="box1">
			<div data-tagid="111" class="tutlogo">
				<a data-tagid="112" href="js/default.asp" class="box" target="_top">		
					<div style="background-color:#555555;" class="image" data-tagid="113"></div>
					<h1 data-tagid="114" class="javascript">JavaScript</h1>
					<h1 data-tagid="115" class="js">JS</h1>
				</a>
			</div>
			<div data-tagid="116" class="tutbuttons">
				<a data-tagid="117" href="js/default.asp" class="btn" target="_top">JavaScript Tutorial</a>
				<a data-tagid="118" href="jsref/default.asp" class="btn" target="_top">JavaScript Reference</a>			
			</div>
		</div>		
		<div data-tagid="119" class="box1">
			<div data-tagid="120" class="tutlogo">
				<a data-tagid="121" href="sql/default.asp" class="box" target="_top">		
					<div style="background-color:#FF9900;" class="image" data-tagid="122"></div>
					<h1 data-tagid="123">SQL</h1>
				</a>
			</div>
			<div data-tagid="124" class="tutbuttons">
				<a data-tagid="125" href="sql/default.asp" class="btn" target="_top">SQL Tutorial</a>
				<a data-tagid="126" href="sql/sql_quickref.asp" class="btn" target="_top">SQL Reference</a>			
			</div>
		</div>
		<div data-tagid="127" class="box1">
			<div data-tagid="128" class="tutlogo">
				<a data-tagid="129" href="php/default.asp" class="box" target="_top">		
					<div style="background-color:#41BC81;" class="image" data-tagid="130"></div>
					<h1 data-tagid="131">PHP</h1>
				</a>
			</div>
			<div data-tagid="132" class="tutbuttons">
				<a data-tagid="133" href="php/default.asp" class="btn" target="_top">PHP Tutorial</a>
				<a data-tagid="134" href="php/php_ref_array.asp" class="btn" target="_top">PHP Reference</a>			
			</div>
		</div>
		<div data-tagid="135" class="box1">
			<div data-tagid="136" class="tutlogo">
				<a data-tagid="137" href="jquery/default.asp" class="box" target="_top">		
					<div style="background-color:#6A8CE9;" class="image" data-tagid="138"></div>
					<h1 data-tagid="139">JQuery</h1>
				</a>
			</div>
			<div data-tagid="140" class="tutbuttons">
				<a data-tagid="141" href="jquery/default.asp" class="btn" target="_top">JQuery Tutorial</a>
				<a data-tagid="142" href="jquery/jquery_ref_selectors.asp" class="btn" target="_top">JQuery Reference</a>			
			</div>
		</div>
		<div data-tagid="143" class="boxDemo">
			<h2 data-tagid="144">Learn Web Building</h2>
			<p data-tagid="145">Learn how to create a website on your own computer<br data-tagid="146">
			Learn the basics of web building in less than a day<br data-tagid="147">
			Learn how to add a database to your website</p>
			<a data-tagid="148" href="website/default.asp" class="btn" target="_top">Web Building Tutorial</a>
		</div>
		<div data-tagid="149" class="boxRef">
			<a data-tagid="150" href="sitemap/sitemap_references.asp" class="box" target="_top">		
				<h1 data-tagid="151">References</h1>
			</a>
			<a data-tagid="152" href="tags/default.asp" target="_top">HTML/HTML5 Tags</a><br data-tagid="153">
			<a data-tagid="154" href="tags/ref_colornames.asp" target="_top">HTML Color</a>s<br data-tagid="155">
			<a data-tagid="156" href="charsets/default.asp" target="_top">HTML Characters</a><br data-tagid="157">
			<a data-tagid="158" href="charsets/ref_html_symbols.asp" target="_top">HTML Symbols</a><br data-tagid="159"><br data-tagid="160">			
			<a data-tagid="161" href="cssref/default.asp" target="_top">CSS 1,2,3</a><br data-tagid="162">		
			<a data-tagid="163" href="cssref/css3_browsersupport.asp" target="_top">CSS3 Support</a><br data-tagid="164"><br data-tagid="165">
			<a data-tagid="166" href="jsref/default.asp" target="_top">JavaScript</a><br data-tagid="167">		
			<a data-tagid="168" href="jsref/default.asp" target="_top">HTML DOM </a><br data-tagid="169">
			<a data-tagid="170" href="jquery/jquery_ref_selectors.asp" target="_top">jQuery</a><br data-tagid="171">
			<a data-tagid="172" href="jquerymobile/jquerymobile_ref_data.asp" target="_top">jQuery Mobile</a><br data-tagid="173">					
			<a data-tagid="174" href="googleAPI/google_maps_ref.asp" target="_top">Google Maps</a><br data-tagid="175"><br data-tagid="176">									
			<a data-tagid="177" href="php/php_ref_array.asp" target="_top">PHP</a><br data-tagid="178">				
			<a data-tagid="179" href="sql/sql_quickref.asp" target="_top">SQL</a><br data-tagid="180">									
			<a data-tagid="181" href="aspnet/aspnet_refhtmlcontrols.asp" target="_top">ASP.NET</a><br data-tagid="182"><br data-tagid="183">														
			<a data-tagid="184" href="dom/dom_nodetype.asp" target="_top">XML DOM</a><br data-tagid="185">
			<a data-tagid="186" href="xsl/xsl_w3celementref.asp" target="_top">XSLT</a><br data-tagid="187">
			<a data-tagid="188" href="xpath/xpath_functions.asp" target="_top">XPath</a><br data-tagid="189">
			<a data-tagid="190" href="svg/svg_reference.asp" target="_top">SVG</a><br data-tagid="191">
		</div>
		<div data-tagid="192" class="box3">
			<a data-tagid="193" href="cert/default.asp" class="btn" target="_top">Web Certificates</a>
			<div style="clear:both;" data-tagid="194"></div>
			<a data-tagid="195" href="sitemap/sitemap_examples.asp" class="btn" target="_top">1000+ Examples</a>
			<div style="clear:both;" data-tagid="196"></div>
		</div>
		<div data-tagid="197" class="box3" id="colorpickerContainer">
		<a data-tagid="198" href="tags/ref_colorpicker.asp" class="colorpicker" target="_top">
			<div data-tagid="199"></div>
			<h3 data-tagid="200">Color Picker</h3>
		</a>
		</div>
		<div style="clear:both;" data-tagid="201"></div>
	</div>
	<div style="clear:both;" data-tagid="202"></div>
</div>
<div data-tagid="203" id="bottomContainer">
	<div data-tagid="204" id="bottom1">
		<div data-tagid="205" id="bottomLogo">
			<a data-tagid="206" href="http://www.w3schools.com"><img src="/images/w3schoolscom_gray.gif" style="width:150px;height:28px;border:0" alt="W3Schools.com" data-tagid="207"></a>
		</div>
		<div style="width:40px;float:left;padding-top:6px;" data-tagid="208">
		</div>
		<div data-tagid="209" id="fblikeContainer">
			<div data-tagid="210">
				<img src="/images/fblike.gif" style="cursor:pointer" alt="facebook like" onclick="" data-tagid="211">
				<div data-tagid="212" id="fblikeframe">
					<div data-tagid="213" id="popupframe" onclick=""></div>
					<div data-tagid="214" id="popupDIV">
					</div>
				</div>
				<!-- begin_ascomment:<script data-tagid="215">:end_ascomment --><!-- begin_ascomment:
				function clickFBLike() {
					document.getElementById("fblikeframe").style.display='block'
					document.getElementById("popupDIV").innerHTML = "<iframe src='/fblike.asp?r=" + Math.random() + "' frameborder='no' style='height:200px;width:300px;'></iframe><br><button onclick='hideFBLike()'>Close</button>";
				}
				
				function hideFBLike() {
					document.getElementById("fblikeframe").style.display='none'
				}
				:end_ascomment --><!-- begin_ascomment:</script>:end_ascomment -->
			</div>
		</div>
		<div data-tagid="216" class="about">
			<a data-tagid="217" href="/forum/default.asp" target="_blank">FORUM</a> |
			<a data-tagid="218" href="/about/default.asp" target="_top">ABOUT</a> |
			<a data-tagid="219" href="/about/about_advert.asp" target="_top">ADVERTISE WITH US</a>
		</div>
	</div>
	<div data-tagid="220" class="bottom">
		<div data-tagid="221">
			W3Schools is optimized for learning, testing, and training. Examples might be simplified to improve reading and basic understanding.
			Tutorials, references, and examples are constantly reviewed to avoid errors, but we cannot warrant full correctness of all content.
			While using this site, you agree to have read and accepted our <a data-tagid="222" href="/about/about_copyright.asp">terms of use</a>, <a data-tagid="223" href="/about/about_privacy.asp">cookie and privacy policy</a>.<br data-tagid="224">
			<a data-tagid="225" href="/about/about_copyright.asp">Copyright 1999-2014</a> by Refsnes Data. All Rights Reserved.<br data-tagid="226"><br data-tagid="227">
		</div>
	</div>
</div>
<!-- begin_ascomment:<script data-tagid="228">:end_ascomment --><!-- begin_ascomment:

if (document.getElementById("menuSearchDIV")) {
	document.getElementById("menuSearchDIV").onclick = function () {
		if (document.getElementById("searchSection").style.display == "block") {
			hideSearch();
		} else {
			showSearch();
		}
	}
}
function showSearch() {
	document.getElementById("searchSection").style.display = "block";
	document.getElementById("closeSearchBTN").style.display = "block";
}

function hideSearch() {
	document.getElementById("searchSection").style.display = "none";
	document.getElementById("closeSearchBTN").style.display = "none";
}

:end_ascomment --><!-- begin_ascomment:</script>:end_ascomment -->

<!-- <script src="http://lvh.me:4000/assets/hermes.js"></script> -->
</body>
</html>
    SRC
  end
end
