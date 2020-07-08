<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>게시물 목록</title>
</head>
<body>
	
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
	</thead>

<tbody>
<c:forEach items="${list}" var="list">
 <tr>
  <td>${list.bno}</td>
  <td>${list.title}</td>
  <td>${list.content}</td>
  <td>${list.writer}</td>
  <td>${list.regdate}</td>
 </tr>
</c:forEach>
</tbody>
</table>
<!--  Modal 추가 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
 	<div class="modal-dialog">
 		<div class="modal-content">
 			<div class="modal-header">
 			<button type="button" class="close" data-dismiss="modal"
 				aria-hidden="true">&times;</button>
 				<h4 class="modal-title" id="myModalLabel">Modal title</h4>
 				</div>
 				<div class="modal-body">처리가 완료되었습니다.</div>
 				<div class="modal-footer">
 				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
 				<button type="button" class="btn btn-primary">Save changes</button>
 				</div>
 			</div>
 			<!-- /.modal-content -->
 		</div>
		<!--  /.modal-dialog -->
	</div>
	<!--  /.modal -->
<script type="text/javascript">
$(document).ready(function(){
	var result = '<c:out value="${result}"/>';
	
	checkModal(result);
	
	function checkModal(result){
		if(result === ''){
			return;
		}
		if(parseInt(result) > 0) {
			$(".modal-body").html("게시글" + parseInt(result) +
			"번이 등록되었습니다.");
		}
		
		$("#myModal").modal("show");
	}
});
</script>	
</body>
</html>