<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<style>
body
{
margin:0;
padding:0;
background-size:cover;
font-family: sans-serif; 
}
body img{
width:100%;
height:100%;
}
.loginBox
{
position:absolute;
top:50%;
left:50%;
transform: translate(-50%, -50%);
width:450px;
height:500px;
padding:80px 40px;
box-sizing: border-box;
background:rgba(0,0,0,0.5) ;
}

h2
{
margin:0;
padding:0 0 20px;
color:#00D1FF;
text-align:center;
} 
.header {
	top: 0;
	color: yellow;
	font: normal 36px 'Cookie', cursive;
	font-style: italic;
	text-align: center;
	text-shadow: black;
	height: 25%;
	width: 100%;
	background-color: #2c292f;
}
.header a {
	margin-top:50px;
	float: left;
	font-size: 18px;
	color: yellow;
	text-align: center;
	padding: 12px 16px;
	text-decoration: none;
}
.title h3 {
	color: #ffffff;
	font: normal 36px 'Cookie', cursive;
	margin: 0;
}


.loginBox p
{
padding:0;
margin:0;
font-weight:bold;
color:#fff;
} 

.loginBox input
{
width:100%;
margin-bottom: 20px; 
}

.loginBox input[type="text"], .loginBox input[type="password"]
{
border: none;
border-bottom: 1px solid #fff;
background: transparent;
outline:none;
height:40px;
color:#fff;
font-size: 16px;


}


.loginBox input[type="submit"]
{
border:none;
outline:none;
height: 40px;
color:#fff;
font-size:16px;
background: rgb(255,38,126);
cursor:pointer;
border-radius:20px;
}

.loginBox input[type="submit"]:hover
{
background: #efed40;
color: #262626;
}
 

.loginBox a
{
color: #fff;
font-size:14px;
font-weight:bold;
} 


::placeholder
{
color:rgba(255,255,255,0.5); 
}


.user
{
width:100px;
height:100px; 
overflow:hidden;
position:absolute;
top:calc(-100px/2);
left:calc(50% - 50px);
border-radius:50%;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: FFFFFF;
}

li {
  float: right;
}

li a {
  display: block;
  color: yellow;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #DDDDDB;
}
.active {
  background-color: #DDDDDB;
}
footer {
	position: fixed;
	bottom: 0;
}

@media ( max-height :800px) {
	footer {
		position: static;
	}
	header {
		padding-top: 40px;
	}
}

.footer-distributed {
	background-color: #2c292f;
	box-sizing: border-box;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;
	padding: 50px 50px 60px 50px;
	/* margin-top: 80px; */
}

.footer-distributed .footer-left, .footer-distributed .footer-center,
	.footer-distributed .footer-right {
	display: inline-block;
	vertical-align: top;
}

/* Footer left */
.footer-distributed .footer-left {
	width: 30%;
}

.footer-distributed h3 {
	color: #ffffff;
	font: normal 36px 'Cookie', cursive;
	margin: 0;
}

/* The company logo */
.footer-distributed .footer-left img {
	width: 30%;
}

.footer-distributed h3 span {
	color: #e0ac1c;
}

/* Footer links */
.footer-distributed .footer-links {
	color: #ffffff;
	margin: 20px 0 12px;
}

.footer-distributed .footer-links a {
	display: inline-block;
	line-height: 1.8;
	text-decoration: none;
	color: inherit;
}

.footer-distributed .footer-company-name {
	color: #8f9296;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}

/* Footer Center */
.footer-distributed .footer-center {
	width: 35%;
}

.footer-distributed .footer-center i {
	background-color: #33383b;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}

.footer-distributed .footer-center i.fa-envelope {
	font-size: 17px;
	line-height: 38px;
}

.footer-distributed .footer-center p {
	display: inline-block;
	color: #ffffff;
	vertical-align: middle;
	margin: 0;
}

.footer-distributed .footer-center p span {
	display: block;
	font-weight: normal;
	font-size: 14px;
	line-height: 2;
}

.footer-distributed .footer-center p a {
	color: #e0ac1c;
	text-decoration: none;;
}

/* Footer Right */
.footer-distributed .footer-right {
	width: 30%;
}

.footer-distributed .footer-company-about {
	line-height: 20px;
	color: #92999f;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}

.footer-distributed .footer-company-about span {
	display: block;
	color: #ffffff;
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 10px;
}

.footer-distributed .footer-icons {
	margin-top: 25px;
}

.footer-distributed .footer-icons a {
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color: #33383b;
	border-radius: 2px;
	font-size: 20px;
	color: #ffffff;
	text-align: center;
	line-height: 65px;
	margin-right: 3px;
	margin-bottom: 5px;
}

/* Here is the code for Responsive Footer */
/* You can remove below code if you don't want Footer to be responsive */
@media ( max-width : 880px) {
	.footer-distributed .footer-left, .footer-distributed .footer-center,
		.footer-distributed .footer-right {
		display: block;
		width: 100%;
		margin-bottom: 40px;
		text-align: center;
	}
	.footer-distributed .footer-center i {
		margin-left: 0;
	}
}

   
</style>
</head>

<body>
<div class="header">
	<img src="images/logo.png">

		<div class="sub-nav-logout">
		<form action ="login">
			<button>Logout</button>
		</div>
	</div>

<img src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/shopping.jpg">

<div class="loginBox">
<img src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/user.jpg" class="user">
<h2>Sign In</h2>
<%-- <form action="${pageContext.request.contextPath}/login" method="post"> --%>
          <form action="customerhome.jsp" method="post">
<p>Username</p>
<input type="text" name = "email" placeholder="Enter email">
<p>Password</p>
<input type="password" name = "password" placeholder="Enter Password">
<input type="submit" name = "" value="Login"><br>
<h2>Not an Existing Customer?</h2>
<a href="customerreg.jsp">
<h2>Sign Up</h2></a>
 

</form>
</div>
<footer class="footer-distributed">

		<div class="footer-left">

			<h3>
				About<span>Happiness Basket</span>
			</h3>

			<p class="footer-links">
				<a href="customerhome.jsp">Home</a> | <a href="deliverylogin.jsp">Careers</a>
				| <a href="#">About</a> | <a href="#">Contact</a>
			</p>

			<p class="footer-company-name">©2019 All copyrights are
				reserved.Happiness Basket Pvt.Ltd.</p>
		</div>

		<div class="footer-center">
			<div>
				<i class="fa fa-map-marker"></i>
				<p>
					<span>34 IT Highway, Navallur, Chennai,</span> Tamil Nadu-603103
				</p>
			</div>

			<div>
				<i class="fa fa-phone"></i>
				<p>044 2743 5001</p>
			</div>
			<div>
				<i class="fa fa-envelope"></i>
				<p>
					<a href="#">happinessbasket@gmail.com</a>
				</p>
			</div>
		</div>
		<div class="footer-right">
			<p class="footer-company-about">
				<span>Happiness Basket</span> Enjoy the hassle-free experience as
				you shop comfortably from your home or your workplace. You can also
				shop for your friends, family and loved-ones and avail our gift
				services for special occasions.
			</p>
			<div class="footer-icons">
				<a href="#"><i class="fa fa-credit-card"></i></a> <a href="#"><i
					class="fa fa-cc-visa"></i></a> <a href="#"><i
					class="fa fa-cc-paypal"></i></a> <a href="#"><i
					class="fa fa-cc-mastercard"></i></a> <a href="#"><i
					class="fa fa-cc-amex"></i></a>
			</div>
		</div>
		</footer>

</body>
</html>

