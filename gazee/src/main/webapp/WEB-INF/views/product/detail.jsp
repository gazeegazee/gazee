<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<style type="text/css">
table {
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}

#chatStart {
	width: 300px;
	height: 80px;
	background: #693FAA;
	border-radius: 20px;
	font-size: large;
	color: white;
	border: none;
}

#reportStart {
	width: 40px;
	height: 40px;
	border: none;
	background-color: white;
}

.dealbtn {
	border: none;
	background: #e8e8e8;
	height: 50px;
	width: 120px;
	margin: 5px;
	border-radius: 5%;
}

.clicked {
	background-color: #f7e3fc;
}
</style>

<script type="text/javascript">

$(function() {
	  var directBtn = $("#directChack");
	  var deliveryBtn = $("#deliveryChack");
	  var transaction = ""; // 초기값은 빈 문자열로 설정
	  
	  // 직거래 버튼 클릭 시
	  directBtn.click(function() {
	    if (!directBtn.hasClass("clicked")) {
	      // 직거래 버튼이 선택되지 않은 상태라면 토글 클래스 추가
	      directBtn.addClass("clicked");
	      deliveryBtn.removeClass("clicked"); // 택배거래 버튼 클래스 제거
	      transaction = "직거래"; // 토글된 버튼의 값을 변수에 할당
	      console.log(transaction);
	    }
	  });

	  // 택배거래 버튼 클릭 시
	  deliveryBtn.click(function() {
	    if (!deliveryBtn.hasClass("clicked")) {
	      // 택배거래 버튼이 선택되지 않은 상태라면 토글 클래스 추가
	      deliveryBtn.addClass("clicked");
	      directBtn.removeClass("clicked"); // 직거래 버튼 클래스 제거
	      transaction = "택배거래"; // 토글된 버튼의 값을 변수에 할당
	    }
	  });

	  /* // 버튼 클릭 시 Ajax 요청
	  $("#chatStart").click(function() {
	    // Ajax 요청 수행
	    $.ajax({
	      url: "유진님 url", // 서버의 URL로 수정
	      data: {
	        transaction: transaction // 선택된 거래 방식 전달
	        productId = $('#productId').val();
			buyerId = 세션 id
	      
	      }
	    });
	  }); */
	});
	
	$(function() {
		$('#productlike').click(function() {
			var memberId = "${bag.memberId}"; // 원래는 로그인 세션의 멤버 아이디를 가져와야 합니다
			var productId = ${bag.productId};

			$.ajax({
				url : "unlike", // 좋아요 취소를 처리하는 서버의 경로로 수정
				type : "POST",
				data : {
					memberId : memberId,
					productId : productId
				},
				success : function(result) {
					if (result == 1) {
						$('#productlike').css('color', 'gray');
						alert("찜 목록에서 삭제되었습니다.");
					} else {
						// 좋아요 상태가 아닌 경우, INSERT 요청
						$.ajax({
							url : "like", // 좋아요를 처리하는 서버의 경로로 수정
							type : "POST",
							data : {
								memberId : memberId,
								productId : productId
							},
							success : function(response) {
								$('#productlike').css('color', 'red');
								alert("찜 목록에 추가되었습니다.");
							}
						});
					}
				}
			});
		});
	});
</script>

</head>
<body>
	<table>
		<tr>
			<td colspan="2" style="text-align: right;"><i
				class="fa fa-solid fa-heart fa-2x" id="productlike"
				style="color: red;"></i></td>
		</tr>
		<tr>
			<td rowspan="6" style="width: 600px; height: 600px;"><img
				width="600px" height="600px"
				src="../resources/img/${bag2.productImageUrl}"></td>
			<td style="width: 250px"><div>${bag.category}</div></td>
		</tr>
		<tr>
			<td style="font-weight: 900; font-size: xx-large;"><div>
					${bag.productName}</div></td>
		</tr>
		<tr>
			<td><div>
					<c:if test="${bag.dealDirect == 1}">
						<img height="30px" src="../resources/img/direct.png">
					</c:if>
					<c:if test="${bag.dealDelivery == 1}">
						<img height="30px" src="../resources/img/delivery.png">
					</c:if>
				</div></td>
		</tr>

		<tr height="200px">
			<td><div style="font-size: medium;">${bag.productContent}</div></td>
		</tr>
		<tr>
			<td><div style="font-weight: 900; font-size: xx-large;">${bag.price}원</div></td>
		</tr>
		<tr>
			<td><button class="dealbtn" id="directChack">직거래</button>
				<button class="dealbtn" id="deliveryChack">택배거래</button></td>
		</tr>
		<tr>
			<td style="display: inline-block;">
				<div style="display: inline-block;">판매자 id : ${bag.memberId}</div>
				<div style="display: inline-block; color: red;">신고횟수
					${bag3.count}회</div>
				<div style="display: inline-block;">
					<button type="button" id="reportStart">
						<img height="50px" width="50px" src="../resources/img/report.png">
					</button>
				</div>
			</td>
			<td><button id="chatStart">판매자와 채팅하기</button></td>

		</tr>
	</table>
</body>
</html>