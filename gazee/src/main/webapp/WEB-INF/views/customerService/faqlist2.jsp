<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">

$('.pages').click(function() {
			$('#result').empty()
			$.ajax({
				url : "faqlist2", //views/bbsList2.jsp가 결과!
				data : {
					page : $(this).text()
				},
				success : function(result) { //결과가 담겨진 table부분코드
					$('#result').append(result)
				},
				error : function() {
					alert('실패.@@@')
				}
			}) //ajax
		})
</script>

<table class="table table-striped"
	style="width: 1000px; margin: 0 auto;">
	<tr>
		<td class="top">번호</td>
		<td class="top">제목</td>
		<td class="top">조회수</td>
	</tr>
	<c:forEach items="${list}" var="bag">
		<tr>
			<td class="down">${bag.faqId}</td>
			<td class="down"><a href="faqOne?no=${bag.faqNo}">${bag.faqTitle}</a>
			</td>
			<td class="down">${bag.faqView}</td>
		</tr>
	</c:forEach>
</table>
<div id="paging" style="margin-top:10px; text-align:center">
	<%
		int pages = (int) request.getAttribute("pages");
	for (int p = 1; p <= pages; p++) {
	%>
	<button class="pages"
		style="background: lime; color: red; width: 50px;"><%=p%></button>
	<%
		}
	%>
</div>
