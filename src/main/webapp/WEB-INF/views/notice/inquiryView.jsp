<%@page import="com.earthpurging.notice.model.vo.Inquiry"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	Inquiry inq = (Inquiry)request.getAttribute("inq");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/news.css">
    <link rel="stylesheet" href="/css/inquiry.css">
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<div class="page-content" id="page-content">
		<div class="page-title">문의사항</div>
		<table class="tbl" id="inquiryView">
			<tr>
				<th class="th">NO</th>
				<td><%=inq.getInquiry_no() %></td>
				<th class="th">제목</th>
				<td colspan="3"><%=inq.getInquiry_title() %></td>
			</tr>
			<tr>
				<th class="th">유형</th>
				<td><%=inq.getInquiry_type() %></td>
				<th class="th">작성자</th>
				<td colspan="3"><%=inq.getInquiry_writer() %></td>
			</tr>
			<tr>
				<th colspan="2" class="th">첨부파일</th>
				<td colspan="2">
				<%if(inq.getInquiry_filepath() != null) {%>
				<img src="/img/file.png" width="16px">
				<a href="/inquiryfileDown.do?inquiryNo=<%=inq.getInquiry_no() %>"><%=inq.getInquiry_filepath() %></a>				
				<%} %>
				</td>
				<th class="th">작성일</th>
				<td><%=inq.getInquiry_enroll_date() %></td>
			</tr>
			<tr>
				<td colspan="6">
					<div id="inquiry-content"><%=inq.getInquiry_content() %></div>
				</td>
			</tr>
			<tr>
				<th>
					<a class="inq-updateBtn" href="/inquiryUpdateFrm.do?inquiryNo=<%=inq.getInquiry_no()%>">수정</a>
					<button class="btn delBtn" onclick="inquiryDelete(<%=inq.getInquiry_no() %>);">삭제</button>
				</th>
			</tr>
		</table>
	</div>
	<script>
		function inquiryDelete(inquiryNo) {
			if(confirm("문의사항을 삭제하시겠습니까?")) {
				location.href="/inquiryDelete.do?inquiryNo="+inquiryNo;
			}
		}
	</script>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>