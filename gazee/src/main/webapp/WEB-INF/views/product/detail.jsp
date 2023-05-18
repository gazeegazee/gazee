<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">
table {
    margin-left: auto;
    margin-right: auto;
   text-align: center;
  }
#chatStart{
width: 300px;
height: 80px;
background: #693FAA;
border-radius: 20px;
font-size:large;
color : white;
border: none;
}
#reportStart{
width: 40px;
height: 40px;
border: none;
background-color: white;
}
.dealbtn{
  border: none;
  background: #e8e8e8;
  height: 50px;
  width: 120px;
  margin: 5px;
  border-radius: 5%;
}

.clicked{
  background-color: #f7e3fc;
}

</style>
<script type="text/javascript">
var directChack = document.querySelector('#directChack');
var deliveryChack = document.querySelector('#deliveryChack');
const CLICKED_CLASS ="clicked"

function handleClick() {
	directChack.classList.toggle(CLICKED_CLASS);
}
directChack.addEventListener("click", handleClick);

function handleClick2() {
	deliveryChack.classList.toggle(CLICKED_CLASS);
}
deliveryChack.addEventListener("click", handleClick2);
</script>

</head>
<body>
	<table>
		<tr>
			<td rowspan="6"
				style="width: 600px; height: 600px;"><img width="600px" height="600px" src="../resources/img/${bag2.productImageUrl}"></td>
			<td style="width: 250px"><div>${bag.category}</div></td>
		</tr>
		<tr>
			<td style="font-weight: 900; font-size:xx-large;"><div>
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
			<td><div style="font-weight: 900; font-size:xx-large;">${bag.price}원</div></td>
		</tr>
		<tr>
			<td><button class="dealbtn" id="directChack">직거래</button>
				<button class="dealbtn" id="deliveryChack">택배거래</button></td>
		</tr>
		<tr>
			<td>${bag.memberId}
				<button id="reportStart"><img height="50px" width="50px" src="../resources/img/report.png"></button>
			</td>
			<td><button id="chatStart">판매자와 채팅하기</button></td>
			
		</tr>
	</table>
</body>
</html>