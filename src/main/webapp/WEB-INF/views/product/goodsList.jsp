<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>Document</title>
		<link rel="stylesheet" href="/style/style.css">
	</head>
	<body>
		<div id="wrap">
			<header id="header" class="dFlex">
				<h1>상품 목록(동적 SQL2)</h1>
				<ul id="mainMenu" class="dFlex">
					<li><a href="/list">목록 보기</a></li>
					<li><a href="/reg">등록하기</a></li>
				</ul>
			</header>
			<hr>
			<!-- 컨트롤러와 모델에서 생성된 데이터 출력 -->
			<div class="headerArea colArea dFlex">
				<span><input type="checkbox" id="chkAll" class="chkDel"></span>
				<span>번호</span>
				<span>상품명</span>
				<span>상품코드</span>
				<span>가격</span>
				<span>재고</span>
				<span>등록시간</span>
			</div>
			<!-- div.headerArea -->
			<c:forEach var="goods" items="${goodsList}">
			<div class="rowArea colArea dFlex">
				<span class="delIcon">
					<input type="checkbox" name="delIdx" class="chkDel" form="chkDelForm"
					value="${goods.num}">
				</span>
				<span>${goods.num}</span>
				<span>${goods.goodsName }</span>
				<span>${goods.goodsCode }</span>
				<fmt:formatNumber var="price" value="${goods.price }" 
					pattern="0,000 원" />
				<span>${price }</span>
				<span>${goods.cnt }</span>
				<fmt:formatDate var="tm" value="${goods.regTM }" 
					pattern="yyyy-MM-dd" />
				<span>${tm }</span>
			</div>
			</c:forEach>
			<div id="searchArea" class="dFlex">
				<div>
					<button type="button" id="btnDel" form="chkDelForm">선택삭제</button>
				</div>
				<div>
					<label>
						<span>상품 검색</span>
						<input type="text" name="searchGoods" id="searchGoods">
					</label>
					<button type="button" id="btnSearch">검색</button>
				</div>
			</div>
			
			<form action="/goodsDel" id="chkDelForm"></form>
			
		</div>
		<!-- div#wrap -->
		<script src="/script/jquery-3.6.4.min.js"></script>
		<script src="/script/script.js"></script>
	</body>
</html>