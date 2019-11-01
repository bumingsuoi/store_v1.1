<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>XXX网上商城</title>
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js" type="text/javascript"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css" />
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
		<!-- 引入自定义css文件 style.css -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" />

		<style>
			body {
				margin-top: 20px;
				margin: 0 auto;
				width: 100%;
			}
			.carousel-inner .item img {
				width: 100%;
				height: 300px;
			}
		</style>
	</head>

	<body>
		<%@ include file="/jsp/header.jsp"%>

		<div class="row" style="width:1210px;margin:0 auto;">
			<%-- 引入分类信息 --%>
			<div class="col-md-12">
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/">首页</a></li>
				</ol>
			</div>
			<c:choose>
				<c:when test="${empty requestScope.page.list}">
					<h3 style="text-align: center;">商品信息不存在</h3>
				</c:when>
				<c:otherwise>
					<c:forEach items="${requestScope.page.list}" var="p">
						<div class="col-md-2" style="height: 280px">
							<a href="${pageContext.request.contextPath}/product?method=getProductByPid&pid=${p.pid}">
								<img src="${pageContext.request.contextPath}/${p.pimage}" width="170" height="170" style="display: inline-block;">
							</a>
							<p><a href="product_info.html" style='color:green'>${p.pname}</a></p>
							<p><font color="#FF0000">商城价：&yen;${p.shop_price}</font></p>
						</div>						
					</c:forEach>
				</c:otherwise>
			</c:choose>
			<!--分页 -->
			<%@ include file="/jsp/pageFile.jsp"%>
		</div>
		<!-- 
       		商品浏览记录:
        -->
		<!-- <div style="width:1210px;margin:0 auto; padding: 0 9px;border: 1px solid #ddd;border-top: 2px solid #999;height: 246px;">

			<h4 style="width: 50%;float: left;font: 14px/30px " 微软雅黑 ";">浏览记录</h4>
			<div style="width: 50%;float: right;text-align: right;"><a href="">more</a></div>
			<div style="clear: both;"></div>

			<div style="overflow: hidden;">

				<ul style="list-style: none;">
					<li style="width: 150px;height: 216;float: left;margin: 0 8px 0 0;padding: 0 18px 15px;text-align: center;"><img src="list/1/cs10001.jpg" width="130px" height="130px" /></li>
				</ul>

			</div>
		</div> -->
		<%@ include file="/jsp/footer.jsp"%>
	</body>

</html>