<%@ page language="java" import="java.util.*,java.sql.*,com.etawahmini.dbinfo.*" pageEncoding="utf-8"%>
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
    <script type="text/javascript">
</script>

    <style type="text/css">
<!--
.style1 {
	font-size:30px;
	font-family:Century;
	color: #FFFFFF;
}
.style3 {
	color:#800000;
	font-size: 18px;
}
.style4 {
	color: #FFCC99;
	font-size: 18px;
}
.style5 {color: #FFFFFF}
.style12 {font-size: 14px}
.style13 {
	font-size: 18px;
	font-weight: bold;
}
body {
	background-image: url();
}
.style14 {color: #800000; font-size: 16px; }
.style16 {color: #FFFFFF; font-size: 24px; }
-->
    </style>
    <!-- <script type="text/javascript">
var cmt=0;
var imgarr= new Array(4);
imgarr[0]="/etawahmini/img/e1.jpg";
imgarr[1]="/etawahmini/img/e2.jpg";
imgarr[2]="/etawahmini/img/e3.jpg";
imgarr[3]="/etawahmini/img/e4.jpg";
imgarr[4]="/etawahmini/img/e5.jpg";
//imgarr[4]="/smartlearn/images/e5.jpg";
function showPic()
{

document.getElementById("img1").src=imgarr[cmt];
cmt++;
if(cmt>4)
{
cmt=0;
}
setTimeout("showPic()",2000);
}
</script> -->
<!-- onLoad="showPic()" -->
</head>
  
  <body  bgcolor="#DEB887">
  
  <div style="position: absolute; left: 1px; width: 1577px; height: 42px; top: 1px;background-color:#800000">
    <div style="position:absolute; left: -32px; top: 2px;"></div>   
    <p style="color: white; font-size: 24px; font-family: cursive; position: absolute; left: 493px; top: -19px; height: 32px; width: 534px;">इटावा हिन्दी सेवा निधि में आपका स्वागत है</p>
    
    <div class="style16" style="position: absolute; left: 122px; top: 10px; height: 27px; width: 186px;"><span style="color: white">नमस्ते</span></div>
  </div>
  <div style="position:absolute; background-color:#8D1919: 3px; top: 41px; width: 1585px; height: 160px; left: -8px; background-color: #DEB887; 
  layer-background-color: #808000; border: 1px none #000000;">
    <p class="style1" style="position: absolute; left: 304px; top: 0px; width: 420px; height: 47px;">न्यायाधीश प्रेम शंकर गुप्ता जी</p>
    <p style="position:absolute; left: 304px; top: 36px;"><span class="style3"></br>
    इलाहाबाद उच्च न्यायालय के न्याय पूर्व प्रमुख,</br>उत्तर प्रदेश</br>१९२९-२०१३</span><span class="style4">. </span></p>
    <p class="style1" style="position: absolute; left: 303px; top: -28px; width: 301px;">संस्था के संस्थापक</p>
  <img src="../img/fd.jpg" style="width=180;height=82; position:absolute; left: 86px; top: 9px; width: 196px; height: 136px;"/> <img src="../img/etawahlogo.jpg" style="width=180;height=82; position:absolute; left: 921px; top: 9px; width: 181px; height: 136px;"/>
  <p class="style1" style="position: absolute; left: 1135px; top: -22px; width: 301px;">इटावा हिन्दी सेवा निधि</p>
  <p style="position:absolute; left: 1136px; top: 9px;"><span class="style3"></br>
    शांति नीलय</br>
२५/१-ए, टैगोर टाउन,</br>
इलाहाबाद - २११००२</br>
फोन नंबर - ०५३२-२४६५०३३</br>
 </span><span class="style4">. </span></p>
 <% String msgtxt=request.getParameter("msg");
 if (msgtxt!=null)
 { %>
 <img src="../img/star1.png" style="position:absolute; top: -12px; height: 220px; left: 657px; width: 268px;" />
  <div id="did"  style="position:absolute;left: 756px; top: 83px; width: 84px; height: 47px;font-style:normal;color:#800000;"> <%=msgtxt%></div>
<%  }%>
  <div style="position: absolute; left: -2px; top: 200px; width: 1586px; height: 33px; background-color: #800000; layer-background-color: #800000; border: 1px none #000000;"></div>
 <div class="style5" style="position: absolute; left: 185px; top: 204px; height: 29px; width: 85px;"><a href="welcome.jsp" style="color: white">प्रथमपृष्ठ</a></div>
 <div class="style5" style="position: absolute; left: 303px; top: 206px; height: 26px; width: 78px;"><a href="aboutus.jsp" style="color: white">हमारे बारे में</a></div>
 <div class="style5" style="position: absolute; left: 442px; top: 205px; height: 27px; width: 89px;"><a href="constitution.jsp" style="color: white">संविधान</a></div>
 <div class="style5" style="position: absolute; left: 588px; top: 207px; height: 25px; width: 75px;"><a href="members.jsp" style="color: white">सदस्य</a></div>
 <div class="style5" style="position: absolute; left: 730px; top: 207px; height: 24px; width: 64px;"><a href="awards.jsp" style="color: white">पुरस्कार</a></div>
 <div class="style5" style="position: absolute; left: 860px; top: 207px; height: 24px; width: 162px;"><a href="awardedmembers.jsp" style="color: white">पुरस्कार विजेता</a></div>
 <div class="style5" style="position: absolute; left: 1051px; top: 206px; height: 24px; width: 103px;"><a href="register.jsp" style="color: white">रजिस्टर</a></div>
 <div style="position: absolute; left: 185px; top: 275px; width: 240px; height: 302px;background-color:#EEDCC3;">
  <div align="center" class="style16" style="position:absolute; width: 242px; height: 31px; background-color: #999933; layer-background-color: #999933; border: 1px none #000000; left: 0px; top: -31px;">समारोह  </div>
  <%Connection con=null;
		ResultSet rs=null; PreparedStatement ps=null;
   	String strsql="select * from documents";
		con=CrudOperation.makeConnection();
		try{
		ps=con.prepareStatement(strsql);
		rs=ps.executeQuery();
		while(rs.next()){
			%><ul type="square"><li><a style="color:#800000;font-size:16px" href="#"><%=rs.getString("description") %></a></li>
  </ul>
  <%
		}
		
		
		}catch(SQLException se)
		{System.out.println(se);
		}
		
			 %>
 </div>
  <div style="top:235px;left:426px;height:285px;width:729px;position:absolute;">
    <iframe src="/etawahmini/html/welphoto1.html" width="730" height="305" style="position:absolute; height: 330px; overflow: scroll; top: 8px;"></iframe>  
  </div>
	<div class="style13" style="position:absolute; left: 186px; top: 531px; width: 970px; height:334px;background-image:url(../img/Picture1.jpg)">
	  <p>&nbsp;</p>
	  <p align="justify" class="style14">वर्ष १९९२ में श्रद्धेय न्यायमूर्ति प्रेमशंकर जी गुप्त ने ‘इटावा हिन्दी सेवा निधि’ रूपी जो बीज रोपा था, साहित्य संसार के सुधीजनों ने उसे अपने स्नेहजल से इस तरह सिंचित किया कि बीते चौदह वर्षों की हमारी सेवायात्रा बड़े सुख और संतोष की रही। शताधिक मनीषियों ने हमारे सम्मान-प्रसून स्वीकार कर हमें गौरवान्वित किया है। उड़ीसा, मेघालय, केरल, हिमांचल, गुजरात, मध्य प्रदेश, हरियाणा, उत्तर प्रदेश, कर्नाटक, मिजोरम, उत्तरांचल के महामहिम राज्यपालों क्रमश: बी0 सत्यनारायण रेड्डी, मधुकर दिघे, पी0 शिवशंंकर, बी0एस0 रमादेवी, अंशुमान सिंह, भार्इ महावीर, बाबू परमानंद, विष्णुकांत शास्त्री, त्रिलोकी नाथ चतुर्वेदी, अमोलक रतन कोहली तथा सुदर्शन अग्रवाल ने अपने पुनीत करों से साहित्य साधकों को सम्मानित कर हमारा मानवर्द्धन किया है।</p>
	  <p align="justify"><span class="style14"> सर्वोच्च न्यायालय के माननीय न्यायमूर्ति राम मनोहर सहाय, गनेन्द्र नारायण रे, एन0 वेंकटचाला, सगीर अहमद, मनोज कुमार मुखर्जी, अजय प्रकाश मिश्र, बृजेश कुमार, बेक्कूर नारायण स्वामि श्रीकृष्ण तथा भारत के मुख्य न्यायाधीश विश्वेश्वर नाथ खरे, पूर्व विधि मंत्री शांति भूषण जी, इलाहाबाद उच्च न्यायालय के मुख्य न्यायाधीश न्यायमूर्ति बी0के0 खन्ना, ए0 लक्ष्मण राव जैसे विधि विशेषज्ञों की अध्यक्षता में हमारे समारोह सम्पन्न हुए।
	    हमारे ‘जनवाणी सम्मान’ को स्वीकारने वाले साहित्यकारों में सर्वश्री डॉ0 शिव मंगल सिंह सुमन, श्रीमती गौरापंत शिवानी, गोपाल प्रसाद व्यास, बेकल उत्साही, सोम ठाकुर, पद्मा सचदेव, डॉ0 महीप सिंह, गोपाल दास नीरज और डॉ0 मोहन अवस्थी ने नि:सन्देह हमारी गरिमा वृद्धि की है। विश्वविख्यात संत पूज्य मोरारी बापू और युग तुलसी पं0 राम किंकर उपाध्याय की कृपापूर्ण उपसिथति से हम कृत-कृत्यं हुए हैं। उत्तर प्रदेश के मुख्यमंत्री श्री मुलायम सिंह यादव तथा भारत के गृह राज्य मंत्री स्वामी चिन्मयानन्द ने भी निधि के कार्यक्रमों में पधार कर हमारा उत्साहवर्द्धन किया है।</span> </p>
  </div>
	<div style="position:absolute; background-color:#800000; left: 184px; top: 855px; width: 973px; height: 52px;">
	  <p style="left:10px"class="style5"><span class="style12"> This is the official Website of Etawah Hindi Sewanidhi,
	  founded by Honourable ex-ChiefJustice of Allahabad High Court,Uttar Pradesh (India). | Best viewed in 1366*768<br> 
	  pixel resolution on Google Chrome browser.</span>
	    <span class="style12">Copyright Statement | Hyperlinking Policy | Terms & Conditions | Privacy Policy |Credits: Er Kunal Gupta & Er Nikhil Gupta</span></p>
  </div>
 </body>
</html>

