<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/style.css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		
	})
</script>

</head>
<body>
	<div id="warp">
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
			<div id="customerServiceMain">
				<div id="customerHead">
					<h1 style="color:#693FAA">고객센터</h1>
				</div>
			</div>
			<div id=result></div>
			<div id=faqButtom>
				<div id=faqSearch>
					<input type="text" size=40;>
					<button id=reportSearchBtn>검색</button>
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