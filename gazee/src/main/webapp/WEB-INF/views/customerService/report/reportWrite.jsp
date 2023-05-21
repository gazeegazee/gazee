<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../../resources/css/style2.css" rel="stylesheet" />
<link rel="stylesheet" href="../../resources/css/product-register.css"
	type="text/css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('.save')
				.click(
						function() {
							var reportWriter = "pa";
							var reportCategory = $('.reportCategory').val();
							var reportTitle = $('.reportTitle').val();
							var reportContent = $('.reportContent').val();
							var save= $(this).val();
								
							if (save == 1 && (reportCategory == null || reportTitle == null || reportContent == null)) {
								alert("필수값을 입력해주세요");
							} else {
								$.ajax({
									url : "reportWrite",
									data : {
										reportWriter : "pa",
										reportCategory : reportCategory,
										reportTitle : reportTitle,
										reportContent : reportContent,
										reportSecrete : 1,
										temporary : save
									},
									success : function(x) {
										if (save == 1) {
											alert("신고 게시글을 등록했습니다.");
										} else if (save == 0) {
											alert("글을 저장했습니다.");
										}
									}
								})
							}

						})
	})
</script>

</head>
<body>
	<div id="wrap">
		<div id="header">
			<jsp:include page="/home/Header.jsp" flush="true" />
		</div>
		<div id="content_wrap" style="text-align: left">
			<div id="content">
				<div id="customerServiceMain">
					<div id="customerHead">
						<h1 style="color: #693FAA">고객센터</h1>
					</div>
					<div id="customerMenu1" style="margin-top: 30px">

						<div class="FAQ">
							<div style="display: flex; justify-content: space-between;">

								<h3 style="color: #693FAA">
									<a href="reportList?page=1&mode=1"
										style="color: #693FAA !important;">신고 게시판</a>
								</h3>

							</div>
						</div>
					</div>
				</div>

				<div id=result>
					<div id="main">
						<div id="title">신고 게시글 쓰기</div>
						<div id="register_table">
							<span id="map"></span>
							<table>
								<tr class="each-row">
									<td class="attribute">제목</td>
									<td><input class="prd-info reportTitle" type="text"></td>

								</tr>
								<tr class="each-row">
									<td class="attribute">카테고리</td>
									<td><select class="reportCategory" name="reportCategory">
											<option value="노쇼 관련">노쇼 관련</option>
											<option value="사기 관련">사기 관련</option>
											<option value="거래 관련">거래 관련</option>
									</select></td>
									<td></td>

								</tr>
								<tr class="content-row">
									<td class="attribute">내용</td>
									<td class="content"><textarea class="prd-info reportContent"> </textarea></td>
								</tr>
								<tr class="each-row">
									<td class="attribute">사진첨부</td>
									<td><input type="file"></td>
								</tr>
							</table>
						</div>
						<div>
							<button class="save" value="1">저장</button>
							<button class="save" value="0">임시저장</button>
						</div>
					</div>
				</div>

				<div id="qnaButtom" style="margin-top: 10px; text-align: center">


				</div>
			</div>
		</div>
		<jsp:include page="/home/Footer.jsp" flush="true" />
	</div>

</body>
</html>