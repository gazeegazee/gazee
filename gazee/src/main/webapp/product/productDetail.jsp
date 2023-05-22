<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%int productId = Integer.parseInt(request.getParameter("productId").trim());%>
<%String memberId = request.getParameter("memberId");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가지가지</title>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link href="../resources/css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() { //body 읽어왔을때
		$.ajax({
			url : "detail",
			data : {
				productId : <%=productId%>,
				memberId : "<%= memberId %>"
			},
			success : function(res) {
				$('#product_table').append(res)
			}
		})

	})
</script>
<style type="text/css">
#product_table {
	font-size: medium;
	/* font-weight : 500; */
	justify-content: center;
	/* padding: 0 250px 0 250px; */
	align-self: center;
	align-content: center;
}
</style>
</head>
<body>
	<div id="header">
		<div class="headerContent">
			<a href="gazeeMain.jsp"> <img
				src="../resources/img/gazee_logo.png" id="logo">
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
	<%-- <%=productId%>
		<%=memberId%> --%>
		<div id="product_table">
		

		</div>
	</div>

	<div id="footer">
		<div>
			<p style="margin: 0; font-size: 12px;">Copyrightⓒ 2023. gazee.
				All rights reserved.</p>
		</div>
	</div>

</body>
</html>