<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="d.com.product_order_detail.model.*"%>
<%@ page import="d.com.product.model.*"%>
<%@ page import="java.util.*"%>
<%-- <%@ page import="org.json.*"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%

 
	Product_Service posvc = new Product_Service();	
	
	List<Product_VO> povoList = posvc.getAll();
	/* JSONArray jsarray = new JSONArray(); */
	System.out.println(povoList);
	pageContext.setAttribute("povoList", povoList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/ProductHomePage.css">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<style>
	.car-BTN{
		position:relative;
		top:25px;
		border:1px solid rgb(33, 37, 41);
		background-color:white;
		font-size:20px;
		width:150px;
		color:rgb(33, 37, 41);
	}
.car-BTN:hover{
		background-color:rgb(33, 37, 41);
		color:white;
	}
	.form-1{
		display:inline-block;
	}
</style>
</head>
<body>
	<header>
		<nav>
			<img class="nav-logo" src="${pageContext.request.contextPath}/images/logo.png" alt="">
			<table class="weather-div">
				<tbody class="weather-tbody">
					<tr class="weather-tr">
					</tr>
					<tr class="weather-tr-1">
					</tr>
				</tbody>
			</table>
			<div class="icon"></div>
			<img class="nav-top-img" src="${pageContext.request.contextPath}/images/wheather.png" alt=""> <a
				href="" class="text">????????????/??????</a> 
				<a href="${pageContext.request.contextPath}/front_end/purchasehomepage/Cart.jsp" class="nav-top-a"> 
				<img
				class="nav-top-img-1" src="${pageContext.request.contextPath}/images/shopping-cart.png" alt="">
			</a>
			<div class="nav-top-bot">
				<ul class="nav-ul-bot">
					<li class="nav-li"><a href="" class="">
							<div class="nav-left-div">
								<p>??????</p>
							</div>
					</a></li>
				</ul>
				<ul class="nav-ul-bot">
					<li class="nav-li"><a href="" class="">
							<div class="nav-left-div">
								<p>????????????</p>
							</div>
					</a></li>
				</ul>
				<ul class="nav-ul-bot">
					<li class="nav-li"><a href="" class="">
							<div class="nav-left-div">
								<p>????????????</p>
							</div>
					</a></li>
				</ul>
				<ul class="nav-ul-bot">
					<li class="nav-li"><a href="" class="">
							<div class="nav-left-div">
								<p>????????????</p>
							</div>
					</a></li>
				</ul>
				<ul class="nav-ul-bot">
					<li class="nav-li"><a href="" class="">
							<div class="nav-left-div">
								<p>????????????</p>
							</div>
					</a></li>
				</ul>
				<ul class="nav-ul-bot">
					<li class="nav-li"><a href="${pageContext.request.contextPath}/front_end/purchasehomepage/PurchaseHomePage.jsp" class="">
							<div class="nav-left-div">
								<p>???????????????</p>
							</div>
					</a></li>
				</ul>
				<ul class="nav-ul-bot">
					<li class="nav-li"><a href="" class="">
							<div class="nav-left-div">
								<p>????????????</p>
							</div>
					</a></li>
				</ul>
				<ul class="nav-ul-bot">
					<li class="nav-li"><a href="" class="">
							<div class="nav-left-div">
								<p>????????????</p>
							</div>
					</a></li>
				</ul>
			</div>
		</nav>
	</header>

	<!-- ????????? -->

	<div id="myCarousel" class="carousel slide">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item active" id="img-id1">
				<img class="img1" src="${pageContext.request.contextPath}/images/????????????.png" alt="First slide">
				<div class="carousel-caption"></div>
			</div>
			<div class="item" id="img-id2">
				<img class="img2" src="${pageContext.request.contextPath}/images/????????????2.png" alt="Second slide">
				<div class="carousel-caption"></div>
			</div>
			<div class="item" id="img-id3">
				<img class="img3" src="${pageContext.request.contextPath}/images/????????????3.jpg" alt="Third slide">
				<div class="carousel-caption"></div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev" id="slide1"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next" id="slide2"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<aside class="aside">
		<nav class="aside_nav">
			<!-- <button type="button" class="btn_hamburger">??????</button> -->
			
			<ul class="aside_nav_list">
				<li><a href="${pageContext.request.contextPath}/front_end/purchasehomepage/PurchaseHomePage.jsp">????????????</a></li>
				<li ><a href="${pageContext.request.contextPath}/front_end/purchasehomepage/Food.jsp">??????</a></li>
				<li><a href="${pageContext.request.contextPath}/front_end/purchasehomepage/Gift.jsp">?????????</a></li>
				<li><a href="${pageContext.request.contextPath}/front_end/purchasehomepage/LifePresents.jsp">????????????</a></li>
				<li><a href="${pageContext.request.contextPath}/front_end/membersorders/Member_home_page.jsp">????????????</a></li>  <!-- ????????????filter -->
				<li><a href="${pageContext.request.contextPath}/front_end/purchasehomepage/Cart.jsp">?????????</a></li>
			</ul>
			
		</nav>
	</aside>
	<div class="main">
	
	
	
	
	
	
		<!-- ????????? -->
		
		<ul class="card-list">
		<div class="search-all">
			<form action="${pageContext.request.contextPath}/Product" class="search-form">
			<lable for="search-form" class="fas fa-search"></lable>
			<input type="search" name="search-bar-string" placeholder="??????..." id="search-box"/>
			<input type="hidden" name="action" value="searchTyping">
			
			</form>
			
			<form action="${pageContext.request.contextPath}/Product" class="sort-form">
			<!-- <select class="select-bar" name="show-product-sort" onchange="this.form.submit()">
				<option value="0">????????????</option>
				<option value="1">????????????</option>
				<option value="2">????????????</option>
			</select> -->
			
			<select class="select-bar" name="show-product-price-sort" onchange="this.form.submit()">
				<option value="">????????????</option>
				<option value="0">????????????</option>
				<option value="1">????????????</option>
			</select>
			<input type="hidden" name="action" value="sort-bar">
			</form>
		</div>


		<!-- ????????? -->
		<c:forEach var="povo" items="${povoList}">
		<form class="form-1" method="post" action="${pageContext.request.contextPath}/Product_order_detailServlet">
<!-- 		<ul class="card-list"> -->
<%-- 			<c:forEach var="povo" items="${povoList}"> --%>
			<li class="card">
			
			<a class="card-image" 
				target="_blank" style="background-image: url(${pageContext.request.contextPath}/Product_reader?product_id=${povo.product_id});"> 
			</a>
			
			 <a class="card-description" >
			
					<h2>${povo.product_name }</h2>
					<p>${povo.product_price}</p> 
					<input class="car-BTN" type="submit" name="goCar" value="????????????">
					<input type="hidden" name="product_Id" value="${povo.product_id}">
					<input type="hidden" name="product_name" value="${povo.product_name }">
					<input type="hidden" name="product_price" value="${povo.product_price}">
					<input type="hidden" name="product_describtion" value="${povo.product_describtion}">
					<input type="hidden" name="action" value="buy_now">
			</a>
			
		<%-- 	<c:if test="${povo.product_name == '???????????????'}">
			<a class="card-image" href="${pageContext.request.contextPath}/front_end/purchasehomepage/Showproductpage6.jsp"
				target="_blank" style="background-image: url(${pageContext.request.contextPath}/Product_reader?product_id=${povo.product_id});"> 
			</a>
			
			 <a class="card-description" href="${pageContext.request.contextPath}/front_end/purchasehomepage/Showproductpage6.jsp">
			
					<h2>${povo.product_name }</h2>
					<p>$${povo.product_price}</p> 
					<input class="car-BTN" type="submit" name="goCar" value="????????????">
					<input type="hidden" name="product_Id" value="${povo.product_id}">
					<input type="hidden" name="product_Id" value="${povo.product_price}">
					<input type="hidden" name="product_Id" value="${povo.product_describtion}">
					<input type="hidden" name="product_Id" value="${povo.product_name}">
			</a>
			</c:if>
			<c:if test="${povo.product_name == '???????????????'}">
			<a class="card-image" href="${pageContext.request.contextPath}/front_end/purchasehomepage/Showproductpage4.jsp"
				target="_blank" style="background-image: url(${pageContext.request.contextPath}/Product_reader?product_id=${povo.product_id});"> 
			</a>
			
			 <a class="card-description" href="${pageContext.request.contextPath}/front_end/purchasehomepage/Showproductpage4.jsp">
			
					<h2>${povo.product_name }</h2>
					<p>$${povo.product_price}</p> 
					<input class="car-BTN" type="submit" name="goCar" value="????????????">
					<input type="hidden" name="product_Id" value="${povo.product_id}">
			</a>
			</c:if>
			<c:if test="${povo.product_name == '???????????????'}">
			<a class="card-image" href="${pageContext.request.contextPath}/front_end/purchasehomepage/Showproductpage2.jsp"
				target="_blank" style="background-image: url(${pageContext.request.contextPath}/Product_reader?product_id=${povo.product_id});"> 
			</a>
			
			 <a class="card-description" href="${pageContext.request.contextPath}/front_end/purchasehomepage/Showproductpage2.jsp">
			
					<h2>${povo.product_name }</h2>
					<p>$${povo.product_price}</p> 
					<input class="car-BTN" type="submit" name="goCar" value="????????????">
					<input type="hidden" name="product_Id" value="${povo.product_id}">
			</a>
			</c:if>
			<c:if test="${povo.product_name == '??????????????????'}">
			<a class="card-image" href="${pageContext.request.contextPath}/front_end/purchasehomepage/Showproductpage1.jsp"
				target="_blank" style="background-image: url(${pageContext.request.contextPath}/Product_reader?product_id=${povo.product_id});"> 
			</a>
			
			 <a class="card-description" href="${pageContext.request.contextPath}/front_end/purchasehomepage/Showproductpage1.jsp">
			
					<h2>${povo.product_name }</h2>
					<p>$${povo.product_price}</p> 
					<input class="car-BTN" type="submit" name="goCar" value="????????????">
					<input type="hidden" name="product_Id" value="${povo.product_id}">
			</a>
			</c:if>
			<c:if test="${povo.product_name == '???????????????'}">
			<a class="card-image" href="${pageContext.request.contextPath}/front_end/purchasehomepage/Showproductpage3.jsp"
				target="_blank" style="background-image: url(${pageContext.request.contextPath}/Product_reader?product_id=${povo.product_id});"> 
			</a>
			
			 <a class="card-description" href="${pageContext.request.contextPath}/front_end/purchasehomepage/Showproductpage3.jsp">
			
					<h2>${povo.product_name }</h2>
					<p>$${povo.product_price}</p> 
					<input class="car-BTN" type="submit" name="goCar" value="????????????">
					<input type="hidden" name="product_Id" value="${povo.product_id}">
			</a>
			</c:if>
			<c:if test="${povo.product_name == '???????????????'}">
			<a class="card-image" href="${pageContext.request.contextPath}/front_end/purchasehomepage/Showproductpage5.jsp"
				target="_blank" style="background-image: url(${pageContext.request.contextPath}/Product_reader?product_id=${povo.product_id});"> 
			</a>
			
			 <a class="card-description" href="${pageContext.request.contextPath}/front_end/purchasehomepage/Showproductpage5.jsp">
			
					<h2>${povo.product_name }</h2>
					<p>$${povo.product_price}</p> 
					<input class="car-BTN" type="submit" name="goCar" value="????????????">
					<input type="hidden" name="product_Id" value="${povo.product_id}">
			</a>
			</c:if> --%>
			</li>
		</form>
			</c:forEach>

			

<!-- 		</ul> -->
			<!-- <input type="hidden" name="action" value="buy_now"> -->		
	</div>
	</ul>
	<footer>
		<div>
			<p>Copyright 2000 , CloudWind HotSpring , All Rights Reserved.
				Designed by</p>
			<p>DREAMCENTER</p>
		</div>
	</footer>


	<div class="textinfo">
		<a href=""><img class="textinfo" src="${pageContext.request.contextPath}/images/chat.png" alt=""></a>
	</div>
	<script src="${pageContext.request.contextPath}/js/date.js"></script>
	<script src="${pageContext.request.contextPath}/js/weather.js"></script>
	<script src="${pageContext.request.contextPath}/js/icon.js"></script>
	<script src="${pageContext.request.contextPath}/js/hidden.js"></script>
	<script src="${pageContext.request.contextPath}/js/purchasepage.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
		integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
		integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
		crossorigin="anonymous"></script>
</body>
</html>