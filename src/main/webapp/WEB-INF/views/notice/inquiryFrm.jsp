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
		<div class="page-title">쓰담소식</div>
		<div class="notice-navi-wrap">
			<div class="navi-wrap">
				<div><a href="#">공지사항</a></div>
				<div><a href="/FAQ.do">FAQ</a></div>
				<div><a href="#">문의하기</a></div>
			</div>
		</div>
		<div class="inquiry-wrap">
			<span>1:1문의</span>
			<span><a href="/inquiryList.do?reqPage=1">문의사항 조회</a></span>
			<div class="one-to-one">
				<div class="inquiry-title">
					<div>이메일 문의하기</div>
					<div>상품/배송 등 쇼핑 관련 문의는 고객센터에서 요청해주세요.</div>
				</div>
				<form action="/inquiry.do" method="post" enctype="multipart/form-data">
					<table class="inquiry-tbl" id="inquiryWrite">
						<tr>
							<select name="inquiry-type">
								<option  name ="type" value="문의유형">문의유형</option>
								<option name="donation" value="후원문의">후원문의</option>
								<option name="quest" value="챌린지문의">챌린지문의</option>
								<option name="goods" value="상품문의">상품문의</option>
							</select>
						</tr>
						<tr>
							<td>
								<input type="text" name="inquirer" value="이름">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="inquirerEmail" value="이메일">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" name="inquiryTitle" value="제목">
							</td>
						</tr>
						<tr>
							<td>
								<textarea name="inquiryContent"></textarea>
							</td>
						</tr>
						<tr>
							<th class="th">첨부파일</th>
							<td><input type="file" name="upfile"></td>
						</tr>
						<tr>
							<td>
								<input type="checkbox" name="agree">개인정보 수집 및 이용동의 *
							</td>
						</tr>
						<tr>
							<th>
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