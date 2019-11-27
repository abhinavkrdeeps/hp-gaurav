<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Happiness Basket</title>



<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



</head>
<style>
table, td {
	border: 1px white;
}

@charset "ISO-8859-1";

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav {
	overflow: hidden;
	background-color: #eeeeee;
	height: 5%;
}

.topnav a {
	display: block;
	color: #676767;
	text-align: right;
	margin-left: 5px;
	margin-right: 10px;
	margin-top: 5px;
	text-decoration: none;
	padding: 5px 5px;
	text-decoration: underline;
	text-shadow: black;
	font-size: 12px;
	text-decoration: none;
}

.navright {
	float: right;
}

.navleft {
	float: left;
}

#about {
	margin-right: 50px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav .icon {
	display: none;
}

@media screen and (max-width: 600px) {
	.topnav
	
	 
	
	a
	
	
	:not
	
	 
	
	(
	:first-child
	
	 
	
	)
	{
	display
	:none
	;
	
	

	

}

.topnav a.icon {
	float: right;
	display: block;
}

}
@media screen and (max-width: 600px) {
	.topnav.responsive {
		position: relative;
	}
	.topnav.responsive .icon {
		position: absolute;
		right: 0;
		top: 0;
	}
	.topnav.responsive a {
		float: none;
		display: block;
		text-align: left;
	}
}

.nav {
	height: 10%;
	background-color: #ffffff;
}

.nav a {
	float: right;
	color: #808080;
	text-align: right;
	margin-left: 5px;
	margin-right: 10px;
	margin-top: 0px;
	margin-bottom: 0px;
	text-decoration: none;
	padding: 5px 5px;
	text-decoration: underline;
	text-shadow: lime;
	font-size: 15px;
	display: block;
}

#sign {
	margin-right: 50px;
}

#home {
	margin-right: 50px;
}

.search {
	border-bottom-left-radius: 15px;
	border-bottom-right-radius: 15px;
	border-top-left-radius: 15px;
	border-top-right-radius: 15px;
	margin-top: 7px;
	margin-left: 20px;
	margin-bottom: 5px;
	width: 400px;
	height: 25px;
	text-align: center;
	font-size: 12px;
}

.fa fa-shopping-cart {
	color: black;
}

.categories {
	height: 5%;
	width: 70%;
	text-align: left;
}

.category {
	margin-left: 10px;
	margin-right: 10px;
}

.carousel {
	margin-left: 0%;
	margin-right: 0%;
	width: 1200px;
	margin-top: 10px;
	margin-bottom: 10px;
	height: 700px;
	position: relative;
}

.row1 {
	margin-top: 320px;
	margin-bottom: 5px;
	height: 400px;
}

.row {
	margin-top: 5px;
	margin-bottom: 5px;
	height: 400px;
}

.column {
	margin-top: 5px;
	float: left;
	margin-left: 14px;
	width: 15%;
	height: 90%;
	background-color: aqua;
	align-self: center;
}

.footer {
	height: 15%;
	background-color: #408080;
}

.f1 {
	float: right;
	height: 100%;
	width: 5%;
	margin-left: 4px;
	margin-bottom: 15px;
}

.foot {
	float: left;
	margin-right: 25px;
	display: block;
}

.mySlides {
	display: block;
}

* {
	padding: 0;
	margin: 0;
}

html {
	background-color: #eaf0f2;
}

body {
	font: 16px/1.6 Arial, sans-serif;
}

header {
	text-align: center;
	padding-top: 100px;
	margin-bottom: 190px;
}

header h1 {
	font: normal 32px/1.5 'Open Sans', sans-serif;
	color: #3F71AE;
	padding-bottom: 16px;
}

header h2 {
	color: #F05283;
}

header span {
	color: #3F71EA;
}

/* The footer is fixed to the bottom of the page */
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
	margin-top: 80px;
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



<body>

	<div class="topnav" id="myTopnav">

		<div class="nav">

			<input type="text" placeholder="Enter the product name to search"
				class="search"><i class="fa fa-search"></i> <a
				href="customerhome.jsp" id="customerhome.jsp">HOME</a> <a
				href="#about">ABOUT</a> <a href="cart.jsp">CART <i
				class="fa fa-shopping-cart"></i>
			</a>

		</div>

		<!-- 
		<a href="#contact" class="navleft"> PHONE +01-044-989867</a> <a
			href="#email" class="navleft">EMAIL : INFO@HAPPINESSBASKET.COM</a> -->
		<a href="customerreg.jsp" class="navright">SIGN UP|SIGN IN</a> <a
			href="#trackorder" class="navright">TRACK ORDER</a> <a
			href="#contact" class="navright">CONTACT US</a>

	</div>



	<!-- <div class="nav">

		<input type="text" placeholder="Enter the product name to search"
			class="search"><i class="fa fa-search"></i> <a href="customerhome.jsp"
			id="customerhome.jsp">HOME</a> <a href="#about">ABOUT</a> <a
			href="cart.jsp">CART <i class="fa fa-shopping-cart"></i>
		</a>

	</div> -->



	<div class="categories">

		<a href="men" class="category">MEN</a> 
		<a href="women"	class="category">WOMEN</a> 
		<a href="accessories" class="category">ACCESSORIES</a> 
		<a href="electronics" class="category">ELECTRONICS</a>

	</div>



	<div class="carousel">

		<img
			src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/banner-bg.jpg"
			class="mySlides" width="150%">

	</div>



	<div class="main">

		<div class="row1">

			<div class="column">
				<a href="google.com"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img1.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img2.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img3.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img4.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img5.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img6.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>


		</div>



		<div class="row">

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img7.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img8.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img9.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img10.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img11.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img12.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>

		</div>



		<div class="row">

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img13.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img14.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img15.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img16.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img17.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img18.PNG"
					class="mySlides" width="100%" height="105%"></a>
			</div>

		</div>
		<div class="row">

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img19.PNG"
					class="mySlides" width="100%" height="120%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img20.PNG"
					class="mySlides" width="100%" height="120%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img21.PNG"
					class="mySlides" width="100%" height="120%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img22.PNG"
					class="mySlides" width="100%" height="120%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img23.PNG"
					class="mySlides" width="100%" height="120%"></a>
			</div>

			<div class="column">
				<a href="#.jsp"><img
					src="file:///C:/happinessbasket/happinessbasket/src/main/webapp/images/img24.PNG"
					class="mySlides" width="100%" height="120%"></a>
			</div>

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

