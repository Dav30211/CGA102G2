	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="d.com.product_order_detail.model.*"%>
<%@ page import="d.com.product.model.*"%>
<%@ page import="d.com.product_order_list.model.*"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/HomePageCss.css">
<title>Insert title here</title>
<style>
.search-form {
	border-radius: 5px;
	position: relative;
	text-align: left;
	background-color: rgb(253, 253, 253);
	box-shadow: 2px 2px 3px 3px #cccccc;
	/* width:45%; */
	height: 200px;
	right:240px;
	bottom:100px;
}
.title{
	/* border: 1px solid black; */
	display:inline-block;
	font-size:30px;
	position:relative;
	left:30px;
	color: black;
	top:-80px;
}

.errorMsg {
	display: inline-block;
	position: relative;
	right: 330px;
	bottom: 49px;
	font-size: 16px;
}

.errorMsg>ul>li {
	list-style: none;
}

.form-list {
	list-style: none;
	position: relative;
	left: 30px;
	display: inline-block;
}

.form-list>li>form {
	margin-top: 20px;
}
.allinput{
	border:1px solid black;
	font-size:16px;
	cursor:pointer;
	background-color:white;
}
.sub{
	cursor:pointer;
	font-size:16;
	border:1px solid black;
	background-color:white;
	color:black;
}
.sub:hover{
	background-color:black;
	color:white;
}

.form-1{
	position:relative;
	display:inline-block;
	top:97px;
	right:100px;
}
.form-2{
position:relative;
	display:inline-block;
	top:53px;
	left:300px;
}
.form-3{
position:relative;
	display:inline-block;
	top:10px;
	left:500px;
}

.homeclick{
	position:relative;
	display:inline-block;
	top:25px;
	right:100px;

}
</style>
</head>
<body>
	<%-- <header>
		<nav class="nav">

			<div class="logo">

				<a href="" class="logo_a"> <img
					src="${pageContext.request.contextPath}/images/logo.png"
					alt="">
				</a> <a class="nav-top-a" href=""><img class="nav-top-chat"
					src="${pageContext.request.contextPath}/images/chat.png"
					alt=""></a> <a href="" class="nav-top-sighout">??????</a>
			</div>
			<div class="line"></div>

		</nav>
	</header>

	<aside class="aside">
		<nav class="nav">
			<div>
				<img
					src="${pageContext.request.contextPath}/images/group.png">
				<p>?????????</p>
				<hr style="background-color: #757575; height: 2px;">
			</div>
			<ul class="nav_list">

				<li><img
					src="${pageContext.request.contextPath}/images/group (1).png"><a
					href="#">????????????</a>
					<ul id="list">
						<li><a href=''>????????????</a></li>
						<li><a href=''>????????????</a></li>
					</ul></li>

				<li><img
					src="${pageContext.request.contextPath}/images/social-group.png"><a
					href="#">????????????</a>
					<ul id="list">
						<li><a href=''>????????????</a></li>
						<li><a href=''>??????????????????</a></li>
					</ul></li>

				<li><img
					src="${pageContext.request.contextPath}/images/talking.png"><a
					href="#">????????????</a>

					<ul id="list">
						<li><a href=''>??????????????????</a></li>
						<li><a href=''>??????????????????</a></li>
					</ul></li>

				<li><img
					src="${pageContext.request.contextPath}//images/bed.png"><a
					href="#">????????????</a>
					<ul id="list">
						<li><a href=''>??????????????????</a></li>
						<li><a href=''>??????????????????</a></li>
						<li><a href=''>??????????????????</a></li>
					</ul></li>

				<li><img
					src="${pageContext.request.contextPath}/images/camping.png"><a
					href="#">????????????</a>
					<ul id="list">
						<li><a href=''>??????????????????</a></li>
						<li><a href=''>??????????????????</a></li>
						<li><a href=''>??????????????????</a></li>
					</ul></li>

				<li><img
					src="${pageContext.request.contextPath}/images/gift.png"><a
					href="${pageContext.request.contextPath}/back_end/product_order_detail/homepage.jsp">???????????????</a>
					<ul id="list">
						<li><a
							href='${pageContext.request.contextPath}/back_end/product_order_detail/searchForm.jsp'>??????????????????</a></li>	
						<li><a
							href='${pageContext.request.contextPath}/back_end/product_order_detail/listAll.jsp'>??????????????????</a></li>
						<li><a
							href='${pageContext.request.contextPath}/back_end/product_order_detail/addProduct_order.jsp'>??????????????????</a></li>
					</ul></li>


			</ul>
		</nav>
	</aside> --%>
	<main>
		<div class="search-form">
			<p class="title">????????????</p>
			<a
								href="${pageContext.request.contextPath}/back_end/product_order_detail/homepage.jsp"><img
								src="${pageContext.request.contextPath}/images/home.png"
								width="50" height="50" border="0" class="homeclick"></a>
			<ul class="form-list">
				<li>
					<FORM class="form-1" METHOD="post"
						ACTION="${pageContext.request.contextPath}/Product_order_detailServlet">
						<b>?????????????????? (1):</b> <input class="allinput" type="text" name="product_id"> <input
							type="hidden" name="action" value="getOne_Product_Detail">
						<input class="sub" type="submit" value="??????"><br>
					</FORM>

				</li>
				<jsp:useBean id="podSvc" scope="page"
					class="d.com.product_order_detail.model.Product_order_detailService" />
				<li>
					<FORM class="form-2" METHOD="post"
						ACTION="${pageContext.request.contextPath}/Product_order_detailServlet">
						<b>??????????????????:</b> <select class="allinput" size="1" name="product_id">
							<c:forEach var="podVo" items="${podSvc.all}">
								<option value="${podVo.product_order_id}">${podVo.product_order_id}
							</c:forEach>
						</select> <input type="hidden" name="action" value="getOne_Product_Detail">
						<input class="sub" type="submit" value="??????">
					</FORM>
				</li>
				<jsp:useBean id="memSvc" scope="page"
					class="com.members.model.MemberService" />
				<li>
					<FORM class="form-3" METHOD="post"
						ACTION="${pageContext.request.contextPath}/Product_order_detailServlet">
						<b>??????????????????:</b> <select class="allinput" size="1" name="memId">
							<c:forEach var="memVo" items="${memSvc.all}">
								<option value="${memVo.member_id}">${memVo.member_id}
							</c:forEach>
						</select> <input type="hidden" name="action"
							value="getOne_Product_DetailbyMember"> 
							<input class="sub"
							type="submit" value="??????">
					</FORM>
				</li>
			</ul>

			<!-- ????????? -->
			<%-- <FORM method="post" enctype="multipart/form-data" ACTION="${pageContext.request.contextPath}/Product_order_detailServlet">
			<input type="hidden" name="action" value="upload">
			<img src="${pageContext.request.contextPath}/Product_order_detailServlet?action=upload&test=1">
			same as src = "<%request.getContextPath()%>"
			</FORM> --%>

			<div class="errorMsg">
				<c:if test="${not empty errorMsg}">
					<ul>
						<c:forEach var="message" items="${errorMsg}">
							<li style="color: red">*${message}</li>
						</c:forEach>
					</ul>
				</c:if>
			</div>
		</div>
	</main>
</body>
</html>