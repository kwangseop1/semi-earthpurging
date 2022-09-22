<%@page import="java.util.ArrayList"%>
<%@page import="com.earthpurging.notice.model.vo.InquiryComment"%>
<%@page import="com.earthpurging.notice.model.vo.Inquiry"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	Inquiry inq = (Inquiry)request.getAttribute("inq");
    	ArrayList<InquiryComment> commentList = (ArrayList<InquiryComment>)request.getAttribute("commentList");
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
				<th><%=inq.getInquirer_email() %></th>
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
		<%if(m!=null) {%>
		<div class="inputCommentBox">
			<form action="/insertComment.do" method="post">
				<ul>
					<li>
						<span class="material-icons">account_box</span>
					</li>
					<li>
						<input type="hidden" name="icWiter" value="<%=m.getNickname() %>">
						<input type="hidden" name="inquiryRef" value="<%=inq.getInquiry_no() %>">
						<input type="hidden" name="icRef" value="0">
						<textarea class="input-form" name="icContent"></textarea>
					</li>
					<li>
						<button type="submit" class="btn">등록</button>
					</li>
				</ul>
			</form>
		</div>
		<%} %>
		<div class="commentBox">
			<%for(InquiryComment ic : commentList) {%>
			<ul class="posting-comment">
				<li>
					<span class="material-icons">account_box</span>
				</li>
				<li>
					<p class="comment-info">
						<span><%=ic.getIcWriter() %></span>
						<span><%=ic.getIcDate() %></span>
					</p>
					<p class="comment-content"><%=ic.getIcContent() %></p>
					<textarea name="icContent" class="input-form" style="min-height: 96px; display: none;"><%=ic.getIcContent() %></textarea>
					<p class="comment-link">
						<%if(m != null) {%>
							<%if(m.getMemberId().equals(ic.getIcWriter())) {%>
								<a href="javascript:void(0)" onclick="modifyComment(this, <%=ic.getIcNo()%>,<%=inq.getInquiry_no()%>);">수정</a>
								<a href="javascript:void(0)" onclick="deleteComment(this, <%=ic.getIcNo()%>,<%=inq.getInquiry_no()%>);">삭제</a>
							<%} %>
						<%} %>
					</p>
				</li>
			</ul>
			<%} %>
		</div>
	</div>
	<script>
		function inquiryDelete(inquiryNo) {
			if(confirm("문의사항을 삭제하시겠습니까?")) {
				location.href="/inquiryDelete.do?inquiryNo="+inquiryNo;
			}
		}
		function modifyComment(obj,ncNo,noticeNo) {
			$(obj).parent().prev().show(); //textarea 화면에보여줌
			$(obj).parent().prev().prev().hide(); //내용을 보여주던 p태그
			//수정 -> 수정완료
			$(obj).text("수정완료");
			$(obj).attr("onclick","modifyComplete(this,"+ncNo+","+noticeNo+")");
			//삭제 -> 수정취소
			$(obj).next().text("수정취소");
			$(obj).next().attr("onclick","modifyCancel(this,"+ncNo+","+noticeNo+")");
			//답글달기버튼 숨김
			$(obj).next().next().hide();
		}
		function modifyCancel(obj,ncNo,noticeNo) {
			$(obj).parent().prev().hide(); //textarea 숨김
			$(obj).parent().prev().prev().show(); //기존 댓글 보여줌
			//수정완료 -> 수정
			$(obj).prev().text("수정");
			$(obj).prev().attr("onclick","modifyComment(this,"+ncNo+","+noticeNo+")");
			//수정취소 -> 삭제
			$(obj).text("삭제");
			$(obj).attr("onclick","deleteComment(this,"+ncNo+","+noticeNo+")");
			//답글달기 버튼 보여줌
			$(obj).next().show();
		}
		function modifyComplete(obj,ncNo,noticeNo){
			//form태그를 생성해서 전송
			//1. form태그생성
			const form = $("<form action='/noticeCommentUpdate.do' method='post'></form>");
			//2. input태그 생성(ncNo)
			const ncInput = $("<input type='text' name='ncNo'>");
			//ncNo값 세팅
			ncInput.val(ncNo);
			//form태그에 추가
			form.append(ncInput);
			//3. input태그 생성(noticeNo)
			const noticeInput = $("<input type='text' name='noticeNo'>");
			noticeInput.val(noticeNo);
			form.append(noticeInput);
			//4. textarea
			const ncContent = $(obj).parent().prev();
			form.append(ncContent);
			//body태그에 생성한 form태그를 추가
			$("body").append(form);
			//form태그 전송
			form.submit();
		}
		function deleteComment(obj,ncNo,noticeNo) {
			if(confirm("댓글을 삭제하시겠습니까?")){
				location.href="/deleteNoticeComment.do?ncNo="+ncNo+"&noticeNo="+noticeNo;
			}
		}
	</script>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>