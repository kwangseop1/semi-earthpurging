<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<div class="page-content">
		<div class="page-title">쓰담<span class="page-title3">소식</span></div>
		<div class="notice-navi-wrap">
			<div class="navi-wrap">
				<div><a href="/noticeList.do?reqPage=1">공지사항</a></div>
				<div><a href="/FAQ.do">FAQ</a></div>
				<div><a href="#">문의하기</a></div>
			</div>
		</div>
		<div class="inquiryFrm-wrap">
			<span><a href="#">1:1문의</a></span>
			<span><a href="/inquiryList.do?reqPage=1">문의사항 조회</a></span>
			<div class="one-to-one">
				<div class="inquiry-title">
					<div>상품/배송 등 쇼핑 관련 문의는 고객센터에서 요청해주세요.</div>
				</div>
				<form action="/inquiry.do" method="post" enctype="multipart/form-data">
					<table class="inquiry-tbl" id="inquiryWrite">
						<tr>
							<th class="th">문의유형</th>
							<td>
								<select name="inquiry-type">
									<option name ="type" value="문의유형">문의유형</option>
									<option name="donation" value="후원문의">후원문의</option>
									<option name="quest" value="챌린지문의">챌린지문의</option>
									<option name="goods" value="상품문의">상품문의</option>
								</select>
							</td>
						</tr>
						<tr>
							<th class="th">문의자 이름</th>
							<td>
								<input type="text" name="inquirer" value="이름">
							</td>
						</tr>
						<tr>
							<th class="th">문의자 이메일</th>
							<td>
								<input type="text" name="inquirerEmail" value="이메일">
							</td>
						</tr>
						<tr>
							<th class="th">문의제목</th>
							<td>
								<input type="text" name="inquiryTitle" value="제목">
							</td>
						</tr>
						<tr>
							<th class="th">문의내용</th>
							<td>
								<textarea class="input-form" name="inquiryContent"></textarea>
							</td>
						</tr>
						<tr>
							<th class="th">첨부파일</th>
							<td><input type="file" name="upfile"></td>
						</tr>
						<tr>
							<td colspan="2">
								<div>
									<input type="checkbox" name="agree">개인정보 수집 및 이용동의 *
								</div>
							</td>
						</tr>
						<tr>
							<th colspan="2">
								
								<button type="submit" class="writeBtn">제출하기</buttone>
							</th>
						</tr>	
					</table>
				</form>
			</div>
		</div>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>