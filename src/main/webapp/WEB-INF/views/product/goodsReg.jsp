<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>상품 등록 페이지</title>
		<link rel="stylesheet" href="/style/style.css">
	</head>
	<body>
		<div id="wrapReg">
			<header id="header" class="dFlex">
				<h1>상품 등록</h1>
				<ul id="mainMenu" class="dFlex">
					<li><a href="/list">목록 보기</a></li>
					<li><a href="/reg">등록하기</a></li>
				</ul>
			</header>
			<form action="/regProc">
				<table id="regTbl">
					<tbody>
						<tr>
							<th>* 상품명</th>
							<td><input type="text" name="goodsName"
								 id="goodsName"  autofocus></td>
						</tr>
						<tr>
							<th>* 상품코드</th>
							<td><input type="text" name="goodsCode" id="goodsCode"></td>
						</tr>
						<tr>
							<th>가격</th>
							<td><input type="text" name="price" id="price"></td>
						</tr>
						<tr>
							<th>* 재고</th>
							<td><input type="text" name="cnt" id="cnt"></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2" id="btnArea">
								<span>( * 필수 )</span>
								<button id="btnReg">등록</button>
								<button type="reset">초기화</button>
							</td>
						</tr>
					</tfoot>
				</table>
				<!-- table#regTbl -->
			
			</form>
			
			
			
		</div>
		<!-- div#wrap -->
		<script src="/script/jquery-3.6.4.min.js"></script>
		<script src="/script/script.js"></script>
	</body>
</html>