<%@page import="p.com.product.model.Product_VO"%>
<%@page import="p.com.product.model.Product_Service"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="p.com.product.model.*"%>
 
<%
	Product_Service prodSvc = new Product_Service();
    List<Product_VO> list = prodSvc.getAll();
    pageContext.setAttribute("list",list);
%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/backend_product.css">
<title>List all products here</title>
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
	margin-top:-30px;
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

table {
	position: relative;
	top:20px;
/* 	top:-10px; */
}

a {
  color: blue;
  text-decoration:underline;
  }
  
td {
    height:100px;
}
</style>


</head>
<body>
    <header>
        <nav class="nav">

            <div class="logo">

                <a href="" class="logo_a">
                    <img src="<%=request.getContextPath() %>/images/logo.png" alt=""><!--  ../../images/logo.png-->
                </a>

                <a class="nav-top-a" href=""><img class="nav-top-chat" src="<%=request.getContextPath() %>/images/chat.png" alt=""></a>

               <a href="${pageContext.request.contextPath}/LogoutEmp" class="nav-top-sighout">${jobVO.job_name}/??????</a>
            </div>
            <div class="line"></div>

        </nav>
    </header>

    <aside class="aside">
        <nav class="nav">
            <div>
                <img src="<%=request.getContextPath() %>/images/group.png">
                <p>${employeeVO.emp_name}</p>
                <hr style="background-color:#757575 ;height:2px;">
            </div>
            <ul class="nav_list">
                
<!--                 <li> -->
<%--                     <img src="<%=request.getContextPath() %>/images/group (1).png"><a href="#">????????????</a> --%>
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>????????????</a></li> -->
<!--                         <li><a href=''>????????????</a></li> -->
<!--                     </ul> -->
<!--                 </li> -->
                
<!--                 <li> -->
<%--                     <img src="<%=request.getContextPath() %>/images/social-group.png"><a href="#">????????????</a> --%>
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>????????????</a></li> -->
<!--                         <li><a href=''>??????????????????</a></li> -->
<!--                     </ul> -->
<!--                 </li> -->
               
<!--                 <li>  -->
<%--                     <img src="<%=request.getContextPath() %>/images/talking.png"><a href="#">????????????</a> --%>
                
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>??????????????????</a></li> -->
<!--                         <li><a href=''>??????????????????</a></li> -->
<!--                     </ul>                 -->
<!--                 </li> -->
               
<!--                 <li>  -->
<%--                     <img src="<%=request.getContextPath() %>/images/bed.png"><a href="#">????????????</a> --%>
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>??????????????????</a></li> -->
<!--                         <li><a href=''>??????????????????</a></li> -->
<!--                         <li><a href=''>????????????</a></li> -->
<!--                         <li><a href=''>????????????</a></li> -->
<!--                         <li><a href=''>??????????????????</a></li> -->
<!--                     </ul> -->
<!--                 </li> -->
               
<!--                 <li>  -->
<%--                     <img src="<%=request.getContextPath() %>/images/camping.png"><a href="#">????????????</a> --%>
<!--                     <ul id="list"> -->
<!--                         <li><a href=''>??????????????????</a></li> -->
<!--                         <li><a href=''>??????????????????</a></li> -->
<!--                         <li><a href=''>??????????????????</a></li> -->

<!--                     </ul> -->
<!--                 </li> -->
                
                <li>
                    <img src="<%=request.getContextPath() %>/images/gift.png"><a href="#">???????????????</a>
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
<!-- ????????????????????? -->	

	<main>

	<h1><a href="<%=request.getContextPath() %>/back_end/product/Select_page.jsp">
<!-- <img src="<%=request.getContextPath() %>/images/back1.gif" width="100" height="32" border="0"> -->?????????????????????</a>
</h1>
		<h2>??????????????????</h2>
<div style="position:relative; right:-400px;"><%@ include file="page1.file" %></div>
		<table border=1>
			<tr>
				<th>????????????</th>
				<th>????????????</th>
				
				<th>??????????????????</th>
				<th>????????????</th>
				<th>????????????</th>
				<th>????????????</th>
				<th>????????????</th>
				<th>??????</th>
				<th>??????</th>

			</tr>

<%-- 			<%@ include file="page1.file" %> --%>
<%-- 			begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%> --%>
				 
<%-- 			<c:forEach var="eachOrderListVO" items="${productOrderList}" --%>
<!-- 				varStatus="d"> -->
<%-- 					<c:forEach var="prodVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>"> --%>
				
				
				<c:forEach var="prodVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
				
<%-- 				<c:forEach var="prodVO" items="${list}"> --%>
				<tr>
					<td height="100px">${prodVO.product_id}</td>
					<td height="100px">${prodVO.product_name}</td>
					
<%-- 					<td height="50px">${prodVO.product_category_id}</td> --%>
					<td height="100px">${prodVO.getCategory_VO().product_category_name}</td>
					<td height="100px">${prodVO.product_describtion}</td>
					<td height="100px">${prodVO.product_price}</td>
					<td height="100px">${prodVO.product_quantity}</td>
					
					<c:if test="${prodVO.product_status == true}">
					<td height="100px">??????</td> 
					</c:if>
					<c:if test="${prodVO.product_status == false}">
					<td height="100px">??????</td> 
					</c:if>
					
					<td height="100px">
					     <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/product.do" style="margin-bottom: 0px;">
					     <input type="submit" value="??????">
					     <input type="hidden" name="product_id"  value="${prodVO.product_id}">
					     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
					</td>
					<td height="100px">
					     <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/product.do" style="margin-bottom: 0px;">
					     <input type="submit" value="??????">
					     <input type="hidden" name="product_id"  value="${prodVO.product_id}">
					     <input type="hidden" name="action" value="delete"></FORM>
					</td>
				</tr>
			</c:forEach>
		</table>
		
		
<!-- 		<div id="include_2" style="position:absolute; left:850px; bottom:400px;"> -->
		<br><br><br><br>
		<div id="include_2">
			<%@ include file="page2.file" %></div>

		<%-- <%@ forward file="homepage.jsp" %> --%>
	</main>
</body>
</html>