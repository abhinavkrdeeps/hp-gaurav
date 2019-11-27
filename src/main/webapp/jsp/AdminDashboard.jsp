<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<title>HappinessBasket</title>
</head>
<style>
body {
	height: 100vh;
	margin-top: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
	margin-right: 0px;
}

h2, h4 {
	display: flex;
	flex-direction: column-reverse;
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
.logo{
 width: 100%;
  height: auto;
}
.sub-nav-logout {
margin-top:30px;
	float: right;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 0px;
	text-decoration: none;
}

.main {
	left: 0;
	right: 0;
	height: 89.5%;
	padding: 0; width : 100%;
	background-color: #b3b3cc;
	width: 100%;
}


.col-sm-4 {
	margin-left: 150px;
	margin-top: 70px;
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
<body style="margin-top:-21px;">

	<div class="header">
	<img src="images/logo.png">

		<div class="sub-nav-logout">
		<form action ="login">
			<button>Logout</button>
		</div>
		<h2><div class="title">HAPPINESS BASKET ADMIN DASHBOARD</div></h2>
	</div>

	<div class="main">
	
		<div class="row">
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-heart"></span>
				<h4>PRODUCTS</h4>
				<a href="${pageContext.request.contextPath}/addproduct"><p>Add Product</p></a>
				<a href="${pageContext.request.contextPath}/getproductlistadmin"><p>Get Product List</p></a>
			</div>
			
			
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-lock"></span>
				<h4>CATEGORIES</h4>
				<a href="${pageContext.request.contextPath}/addcategory"><p>Add Category</p></a>
				<a href="${pageContext.request.contextPath}/getallcategory"><p>Get Category List</p></a>
			</div>
		</div>
		
		<div class="row">
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-heart"></span>
				<h4>DELIVERY PERSON</h4>
				<a href="${pageContext.request.contextPath}/adddel"><p>Add Delivery Person</p></a>
				<a href="${pageContext.request.contextPath}/getdel"><p>Get Delivery Person List</p></a>
			</div>
			
			
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-lock"></span>
				<h4>ORDERS</h4>
				<a href="${pageContext.request.contextPath}/addorder"><p>Add Order</p></a>
				<a href="${pageContext.request.contextPath}/getallorder"><p>Get Order List</p></a>
			</div>
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