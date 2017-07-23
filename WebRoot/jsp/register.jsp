<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html
  PUBLIC "-//W3C//DTD XHTML+RDFa 1.0//EN" "http://www.w3.org/MarkUp/DTD/xhtml-rdfa-1.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="hi" lang="hi">
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      
    
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->

    <style>
    .fnt{-webkit-border-radius:10px;-moz-border-radius:10px;height:30px;border:2px #FAAC58 }.style1 {
	color: #800000;
	font-size: 2em;
}
    .style16 {color: #FFFFFF; font-size: 24px; }
    .style17 {	font-size:30px;
	font-family:Century;
	color: #FFFFFF;
}
.style3 {	color:#800000;
	font-size: 18px;
}
.style4 {	color: #FFCC99;
	font-size: 18px;
}
    body {
	background-image: url(../img/Picture1.jpg);
}
</style>
<script type="text/javascript" src="/etawahmini/js/validation.js"></script>
<script type="text/javascript">
function checkuserid(ui)
{
if (XMLHttpRequest)
{
x=new XMLHttpRequest();
}
else
{
x=new ActiveXObject("Microsoft.XMLHTTP");
}
x.onreadystatechange=function()
{
if(x.readyState==4 && x.status==200)
{
var info=x.responseText;
document.getElementById("serdiv").innerHTML=info;
}
}
x.open("GET", "/etawahmini/servlet/Registration?id="+ui,"true");
x.send();
}





function main()
{
//alert("in main");
phno=document.getElementsById("num").value;
if(checkPhoneno(phno)==false)
{
alert("Enter Valid Mobile Number");
document.getElementById("num").focus();
return false;
}
var gn=document.getElementsById("gen").value;
if(checkGender(gn)==false)
{
alert("Select Gender");
return false;
}
return true;
}


</script>
  </head>
  <body background="../img/Picture1.jpg">
    <div style="top:237px;left:-106px;height:71px;width:1689px;position:absolute;background-color:#800000;">
    <h1 align="center" style="font-family:cursive; font-size: 40px; left:508px; color:white; position: absolute; width: 643px; height: 51px; top: -18px;">इटावा हिन्दी सेवा निधि में रजिस्टर</h1>
  </div>
  <div style="top:304px;left:-5px;height:686px;width:1586px;position: absolute; background-image:url(../img/Picture1.jpg)">
  <form action="/etawahmini/servlet/Registration" method="post" onsubmit="return main()" >
    <table width="359" height="494"  style="width=315;height=341;border-color:#800000;border:double; position:absolute; left: 497px; top: 16px; height: 526px; width: 498px;">
        <tr><td width="242"><span class="style1">प्रथम नाम*</span></td>
          <td width="244" height="49"><input type="text" id="rid"size="30" value="" class="fnt" name="rfn" required placeholder="First Name" />          </td>
        </tr>
		<tr><td height="40"><span class="style1">आखिरी नाम*</span></td>
		<td><input type="text"class="fnt" id="rpwd" value="" size="30" name="rln" required placeholder="Last Name" /></td></tr>
        <tr><td height="54"><span class="style1">शहर*</span></td>
          <td><input type="text" size="30" value=""class="fnt" id="rrid" name="rr" required placeholder="City"/></td>
        </tr>
        <tr><td><span class="style1">मोबाइल नंबर*</span></td>
          <td height="39"><input type="text" size="30" value=""class="fnt" name="rph" id="num" required placeholder="Mobile Number"/></td>
        </tr>
        <tr><td><span class="style1">ईमेल आईडी*</span></td>
          <td height="72"><input type="email" size="40" value=""class="fnt" id="email "name="rid" onblur="checkuserid(this.value)" required placeholder="Your Valid E-mail Address"/></td>
        </tr>
        <tr><td><span class="style1">लिंग*</span></td>
          <td height="24"><input type="radio" name="gender" id="gen" value="Male" />
            पुस्र्ष
            <input type="radio" name="gender" value="Female"/>
            स्त्री </td>
        </tr>
		<tr><td height="58"></td>
		  <td><input type="submit" name="button2"  style="background-color:#8D1919;color: white; border-style:solid;border-color:	#B4956E; position:alute; top: 432px; left: 64px; width: 169px;"value="Sign Up" class="fnt" /></td>
		</tr>
    </table>
	</form>
  </div>
  <div style="position: absolute; left: 1px; width: 1577px; height: 42px; top: 1px;background-color:#800000">
    <div style="position:absolute; left: -32px; top: 2px;"></div>
    <p style="color: white; font-size: 24px; font-family: cursive; position: absolute; left: 493px; top: -19px; height: 32px; width: 534px;">इटावा हिन्दी सेवा निधि में आपका स्वागत है</p>
    <div class="style16" style="position: absolute; left: 122px; top: 10px; height: 27px; width: 186px;"><span style="color: white">नमस्ते</span></div>
  </div>
  <div style="position:absolute; background-color:#8D1919: 3px; top: 41px; width: 1589px; height: 160px; left: -8px; background-color: #DEB887; 
  layer-background-color: #808000; border: 1px none #000000;">
    <p class="style17" style="position: absolute; left: 304px; top: 0px; width: 420px; height: 47px;">न्यायाधीश प्रेम शंकर गुप्ता जी</p>
    <p style="position:absolute; left: 304px; top: 36px;"><span class="style3"></br>
      इलाहाबाद उच्च न्यायालय के न्याय पूर्व प्रमुख,</br>
      उत्तर प्रदेश</br>
      १९२९-२०१३</span><span class="style4">. </span></p>
    <p class="style17" style="position: absolute; left: 303px; top: -28px; width: 301px;">संस्था के अग्रणी</p>
    <img src="../img/fd.jpg" style="width=180;height=82; position:absolute; left: 86px; top: 9px; width: 196px; height: 136px;"/> <img src="/etawahmini/img/etawahlogo.jpg" style="width=180;height=82; position:absolute; left: 921px; top: 9px; width: 181px; height: 136px;"/>
    <p class="style17" style="position: absolute; left: 1135px; top: -22px; width: 301px;">इटावा हिन्दी सेवा निधि</p>
    <p style="position:absolute; left: 1136px; top: 9px;"><span class="style3"></br>
      शांति नीलय</br>
      २५/१-ए, टैगोर टाउन,</br>
      इलाहाबाद - २११००२</br>
      फोन नंबर - ०५३२-२४६५०३३</br>
    </span><span class="style4">. </span></p>
	<% String msgtxt=request.getParameter("msg");
 if (msgtxt!=null)
 { %>
	<img src="../img/star1.png" width="412" style="position:absolute; top: 291px; height: 387px; width: 387px; left: 57px;"/>
	<div id="did"  style="position:absolute;left: 192px; top: 442px; width: 125px; height: 105px;font-style:Arial Black;font-size:40;color:#000000;"> <%=msgtxt%></div> 
<%  }%>
  </div>
  <div style="position: absolute; left: -2px; top: 200px; width: 1584px; height: 33px; background-color: #800000; layer-background-color: #800000; border: 1px none #000000;"> <div class="style5" style="position: absolute; left: 178px; top: 3px; height: 29px; width: 85px;"><a href="/etawahmini/jsp/welcome.jsp" style="color: white">प्रथमपृष्ठ</a></div>
 <div class="style5" style="position: absolute; left: 297px; top: 4px; height: 26px; width: 78px;"><a href="aboutus.jsp" style="color: white">हमारे बारे में</a></div>
 <div class="style5" style="position: absolute; left: 422px; top: 4px; height: 27px; width: 89px;"><a href="constitution.jsp" style="color: white">संविधान</a></div>
 <div class="style5" style="position: absolute; left: 559px; top: 6px; height: 25px; width: 75px;"><a href="members.jsp" style="color: white">सदस्य</a></div>
 <div class="style5" style="position: absolute; left: 708px; top: 5px; height: 24px; width: 64px;"><a href="awards.jsp" style="color: white">पुरस्कार</a></div>
 <div class="style5" style="position: absolute; left: 819px; top: 6px; height: 24px; width: 162px;"><a href="awardedmembers.jsp" style="color: white">पुरस्कार विजेता</a></div>
 <div class="style5" style="position: absolute; left: 1038px; top: 6px; height: 24px; width: 103px;"><a href="register.jsp" style="color: white">रजिस्टर</a></div>
  </div>
  </body>
</html>
   