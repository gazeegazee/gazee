<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../../resources/css/style.css" rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {

		$('.pages').click(function() {
			$('#result').empty()
			$.ajax({
				url : "faqSearch", //views/bbsList2.jsp가 결과!
				data : {
					page : $(this).text(),
					mode : 2,
					search1 : '${searchValue}'
				},
				success : function(result) { //결과가 담겨진 table부분코드
					$('#result').html(result)
				},
				error : function() {
					alert('실패.@@@')
				}
			}) //ajax
		})//click
		
		$('#faqList').click(function() {
			var category1=$('#category').val();
			location.href="../../customerService/faq/faqCategory?page=1&mode=1&category1="+category1;
			
		})//category
		
		$('#faqSearchBtn').click(function() {
			var search1=$('#faqSearch').val();
			location.href="../../customerService/faq/faqSearch?page=1&mode=1&search1="+search1;
			
		})//search
	})
</script>

</head>
<body>
	<div id="warp">
		<div id="header">
			<div class="headerContent">
				<a href="gazeeMain.jsp"> <img
					src="../../resources/img/gazee_logo.png" id="logo">
				</a>
				<div id="search">
					<input type="text" id="searchBar" placeholder="검색어를 입력하세요.">
					<input type="submit" id="searchButton" value="검색">
				</div>
				<ul class="menu">
					<li id="login">로그인</li>
					<li class="line">|</li>
					<li>회원가입</li>
					<li class="line">|</li>
					<li>고객센터</li>
					<li class="line">|</li>
					<li>
						<div class="mobile_btn">
							<input type="checkbox" id="hamburger" /> <label for="hamburger">
								<span></span> <span></span> <span></span>
							</label>
							<div class="sidebar">
								<h2
									style="text-align: center; position: relative; top: 60px; color: #693FAA;">카테고리</h2>
								<hr
									style="position: relative; top: 60px; border: solid 1px black;">
								<ul class="nav_mobile">
									<li><a href="#">의류</a><a href="#">잡화</a><a href="#">도서</a></li>
									<li><a href="#">디지털기기</a><a href="#">생활가전</a><a href="#">가구/인테리어</a></li>
									<li><a href="#">뷰티/미용</a><a href="#">스포츠/레저</a><a href="#">생활/주방</a></li>
									<li><a href="#">취미/게임/음반</a><a href="#">반려동물용품</a><a
										href="#">기타</a></li>
								</ul>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<div id="content">
			<div id="customerServiceMain">
				<div id="customerHead">
					<h1 style="color: #693FAA">고객센터</h1>
				</div>
				<div id="customerMenu1" style="margin-top: 30px">

					<div class="FAQ">
						<div style="display: flex; justify-content: space-between;">
							<h3 ><a href="faqlist?page=1&mode=1" style="color: #693FAA !important">자주 묻는 질문(FAQ)</a></h3>
							<div
								style="display: flex; justify-content: space-between; align-items: center; gap: 10px">
								<form method="get">
									<label for="category">카테고리</label> <select id="category"
										name="category" size="1">
										<option value="">선택하세요.</option>
										<option value="결제 관련">결제 관련</option>
										<option value="배송 관련">배송 관련</option>
										<option value="거래 관련">거래 관련</option>
									</select>
								</form>
								<button id="faqList">목록</button>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div id=result>
				<table class="table table-striped"
					style="width: 1000px; margin: 0 auto;">
					<tr>
						<td class="top">번호</td>
						<td class="top">제목</td>
						<td class="top">조회수</td>
					</tr>
					<c:forEach items="${search}" var="bag">
						<tr>
							<td class="down">${bag.faqId}</td>
							<td class="down"><a href="faqOne?no=${bag.faqNo}">${bag.faqTitle}</a>
							</td>
							<td class="down">${bag.faqView}</td>
						</tr>
					</c:forEach>
				</table>

			</div>
			<div id="paging" style="margin-top: 10px; text-align: center">
				<%
					int pages1 = (int) request.getAttribute("pages1");
				for (int p = 1; p <= pages1; p++) {
				%>
				<button class="pages"
					style="background: lime; color: red; width: 50px;"><%=p%></button>
				<%
					}
				%>
			</div>
			<div id=faqButtom style="margin-top: 10px; text-align: center">

				<div id="search" style="margin-top: 10px">
					<input id="faqSearch" type="text" size=40;>
					<button id=faqSearchBtn>검색</button>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<div>
			<p style="margin: 0; font-size: 12px;">Copyrightⓒ 2023.gazee. All
				rights reserved.</p>
		</div>
	</div>

</body>
</html>