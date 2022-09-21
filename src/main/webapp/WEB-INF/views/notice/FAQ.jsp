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
    <link rel="stylesheet" href="/css/FAQ.css">
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<div class="page-content">
		<div class="page-title">쓰담소식</div>
		<div class="notice-navi-wrap">
			<div class="navi-wrap">
				<div><a href="/noticeList.do?reqPage=1">공지사항</a></div>
				<div><a href="/FAQ.do">FAQ</a></div>
				<div><a href="/inquiryFrm.do">문의하기</a></div>
			</div>
		</div>
		<div class="FAQ-wrap">
			<ul>
				<li>
					<div class="question-icon">
						<span>Q</span>
						<img src="/img/arrowDown.png">
					</div>
					<p class="question-content">
					후원 하고 싶어요 뭘할까여ㅛ
					다시 할까요
					</p>
				</li>
			</ul>
		</div>
	</div>
	
	<script>
		
		$(".question-icon>img").on("click",function(){
			$(".question-content").css("height","40px");
			$(".question-icon>img").attr("src","/img/arrowUp.png");
			
		});
		
		
	</script>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>