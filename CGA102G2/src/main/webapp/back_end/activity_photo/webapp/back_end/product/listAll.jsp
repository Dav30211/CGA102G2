<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="d.com.product_order_detail.model.*"%>
<%@ page import="p.com.product.model.*"%>
<%@ page import="d.com.product_order_list.model.*"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
<%-- <jsp:useBean id="productsvc"
	class="com.product_order_detail.model.Product_order_detailService" />
<%
List<Product_order_detailVO> productOrderList = productsvc.getAll();
pageContext.setAttribute("productOrderList", productOrderList);

%> --%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/HomePageCss.css">
<title>Insert title here</title>
<style>
table {
	border-radius: 5px;
	position: relative;
	background-color: rgb(253, 253, 253);
	box-shadow: 2px 2px 3px 3px #cccccc;
	width: 900px;
}

table, th, td {
	border: 1px solid #CCCCFF;
}

th, td {
	padding: 3px;
	text-align: center;
}

thead.thead>tr th:nth-child(2), thead.thead>tr th:nth-child(3) {
	width: 250px;
}

tbody.tbody tr:hover {
	content: attr(title);
	background-color: rgb(208, 255, 255);
}

.table {
	text-align: center;
}

th, td, tr {
	border: 1px solid darkgray;
}


.Img{
	width:2%;
	height:5%;
	position:absolute;
	margin-top:-10px;
	margin-left:-11px;
}
.Img:hover{
	width:2.5%;
	height:5.5%;
}
</style>


</head>
<body>
	<jsp:useBean id="productsvc"
		class="d.com.product_order_detail.model.Product_order_detailService" />
	<%
List<Product_order_detailVO> productOrderList = productsvc.getAll();
pageContext.setAttribute("productOrderList", productOrderList);

%>
	<header>
		<nav class="nav">

			<div class="logo">

				<a href="" class="logo_a"> <img
					src="${pageContext.request.contextPath}/images/logo.png"
					alt="">
				</a> <a class="nav-top-a" href=""><img class="nav-top-chat"
					src="${pageContext.request.contextPath}/images/chat.png"
					alt=""></a> 
					 <a href="${pageContext.request.contextPath}/LogoutEmp" class="nav-top-sighout">${jobVO.job_name}/??????</a>
			</div>
			<div class="line"></div>

		</nav>
	</header>

	<aside class="aside">
		<nav class="nav">
			<div>
				<img
					src="${pageContext.request.contextPath}/images/group.png">
				<p>${employeeVO.emp_name}</p>
				<hr style="background-color: #757575; height: 2px;">
			</div>
			<ul class="nav_list">

<!-- 				<li><img -->
<%-- 					src="${pageContext.request.contextPath}/images/group (1).png"><a --%>
<!-- 					href="#">????????????</a> -->
<!-- 					<ul id="list"> -->
<!-- 						<li><a href=''>????????????</a></li> -->
<!-- 						<li><a href=''>????????????</a></li> -->
<!-- 					</ul></li> -->

<!-- 				<li><img -->
<%-- 					src="${pageContext.request.contextPath}/images/social-group.png"><a --%>
<!-- 					href="#">????????????</a> -->
<!-- 					<ul id="list"> -->
<!-- 						<li><a href=''>????????????</a></li> -->
<!-- 						<li><a href=''>??????????????????</a></li> -->
<!-- 					</ul></li> -->

<!-- 				<li><img -->
<%-- 					src="${pageContext.request.contextPath}/images/talking.png"><a --%>
<!-- 					href="#">????????????</a> -->

<!-- 					<ul id="list"> -->
<!-- 						<li><a href=''>??????????????????</a></li> -->
<!-- 						<li><a href=''>??????????????????</a></li> -->
<!-- 					</ul></li> -->

<!-- 				<li><img -->
<%-- 					src="${pageContext.request.contextPath}/images/bed.png"><a --%>
<!-- 					href="#">????????????</a> -->
<!-- 					<ul id="list"> -->
<!-- 						<li><a href=''>??????????????????</a></li> -->
<!-- 						<li><a href=''>??????????????????</a></li> -->
<!-- 						<li><a href=''>??????????????????</a></li> -->
<!-- 					</ul></li> -->

<!-- 				<li><img -->
<%-- 					src="${pageContext.request.contextPath}/images/camping.png"><a --%>
<!-- 					href="#">????????????</a> -->
<!-- 					<ul id="list"> -->
<!-- 						<li><a href=''>??????????????????</a></li> -->
<!-- 						<li><a href=''>??????????????????</a></li> -->
<!-- 						<li><a href=''>??????????????????</a></li> -->
<!-- 					</ul></li> -->

				<li><img
					src="${pageContext.request.contextPath}/images/gift.png"><a
					href="${pageContext.request.contextPath}/back-end/product_order_detail/homepage.jsp">???????????????</a>
					 <ul id="list">
                        <li><a href='<%=request.getContextPath() %>/back_end/product_order_detail/homepage.jsp'>??????????????????</a></li> 
                        <li><a href="<%=request.getContextPath() %>/back_end/product_category/Select_page.jsp">??????????????????</a></li>
                        <li><a href="<%=request.getContextPath() %>/back_end/product/Select_page.jsp">????????????</a></li>
                        <li><a href="<%=request.getContextPath() %>/back_end/product_pics/Select_page.jsp">??????????????????</a></li>
                    </ul>
					</li>


			</ul>
		</nav>
	</aside>
	<main>
		<h3>??????????????????</h3>


		<table border=1>
			<tr>
				<th>????????????</th>
				<th>????????????</th>
				<th>????????????</th>
				<th>????????????</th>
				<th>????????????</th>
				<th>????????????</th>
				<th>????????????</th>
				<th>????????????</th>

			</tr>

			<%-- <%@ include file="page1.file" %> --%>
			<%-- begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%> --%>
			<c:forEach var="eachOrderListVO" items="${productOrderList}"
				varStatus="d">
				<tr>
					<td>${eachOrderListVO.product_order_id}</td>
					<td>${eachOrderListVO.member_id}</td>
					<td><fmt:formatDate
							value="${eachOrderListVO.product_order_date}"
							pattern="yyyy-MM-dd" /></td>
					<td>${eachOrderListVO.getProduct_amount()}</td>
					<c:set var="method" value="${eachOrderListVO.payment_method}" />
					<c:if test="${method == 0}">
						<td>?????????</td>
					</c:if>
					<c:if test="${method == 1}">
						<td>????????????</td>
					</c:if>

					<c:set var="status" value="${eachOrderListVO.order_status}" />
					<c:if test="${status == 0}">
						<td>?????????</td>
					</c:if>
					<c:if test="${status == 1}">
						<td>??????</td>
					</c:if>
					<c:if test="${status == 2}">
						<td>??????</td>
					</c:if>

					<td>
						<FORM METHOD="post"
							ACTION="${pageContext.request.contextPath}/Product_order_detailServlet"
							style="margin-bottom: 0px;">
							<input  class="Img" type="image" src="<%=request.getContextPath()%>/images/update.png" alt="Submit">
							<!-- <input type="submit" value="??????"> --> 
							<input type="hidden" name="product_order_id" value="${eachOrderListVO.product_order_id}"> 
							<input type="hidden" name="action" value="getOne_For_Update">
						</FORM>
					</td>
					<td>
						<FORM METHOD="post"
							ACTION="${pageContext.request.contextPath}/Product_order_detailServlet"
							style="margin-bottom: 0px;">
							<input  class="Img" type="image" src="<%=request.getContextPath()%>/images/delete.png" alt="Submit">
							<!-- <input type="submit" value="??????"> --> 
							<input type="hidden"
								name="product_order_id"
								value="${eachOrderListVO.product_order_id}"> <input
								type="hidden" name="action" value="delete">
						</FORM>
					</td>
				</tr>
			</c:forEach>
		</table>
		<%-- <%@ forward file="homepage.jsp" %> --%>
	</main>
</body>
</html>