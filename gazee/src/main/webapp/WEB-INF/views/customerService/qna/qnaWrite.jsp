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
						
							<h3 style="color: #693FAA"><a href="qnaList?page=1&mode=1" style="color: #693FAA !important;">1:1 질문 게시판(QnA)</a></h3>
							
						</div>
					</div>
				</div>
			</div>

			<div id=result>
				<h3>게시글 쓰기</h3><hr>
				<form method="get">
				<h3>제목</h3><input id="qnaWriteTitle" type="text" style="width:100%; heigth:14px;" ><hr>
				<h3>카테고리</h3>	
				<select id="qnaWriteCategory" name="category" size="1">
					<option value="">선택하세요.</option>
					<option value="결제 관련">결제 관련</option>
					<option value="배송 관련">배송 관련</option>
					<option value="거래 관련">거래 관련</option>
				</select><hr>
				<h3>내용</h3><textarea id="qnaWriteContent" cols="125" rows="10"></textarea><hr>
				<h3>작성자(원래는 없음)</h3><input id="qnaWriteWriter" type="text" style="width:100%; heigth:14px;" ><hr>
				<label>첨부파일</label> 
				
				
				
				
				
				</form>
			</div>
			
			<div id="qnaButtom" style="margin-top: 10px; text-align: center">

				
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