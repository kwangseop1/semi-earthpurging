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
						<span>신청은 혼자 했는데 활동을 친구 또는 가족과 했습니다. 쓰담 기록지를 모두 제출하면 인정되나요???????????</span>
						<img src="/img/news/arrowDown.png">
					</div>
					<p class="question-content">
					사전신청을 한 인원에 한해서만 기록지 제출이 인정됩니다. 참여자 개별 사전 신청 바랍니다.
					</p>
				</li>
			</ul>
		</div>
		<div class="FAQ-wrap2">
			<ul>
				<li>
					<div class="question-icon2">
						<span>Q</span>
						<span>참가신청만 하면 봉사시간이 인증되나요??????</span>
						<img src="/img/news/arrowDown.png">
					</div>
					<p class="question-content2">
					아니요, 활동 후 반드시 쓰담 기록지를 제출해주셔야 합니다.
					</p>
				</li>
			</ul>
		</div>
		<div class="FAQ-wrap3">
			<ul>
				<li>
					<div class="question-icon3">
						<span>Q</span>
						<span>참가신청만 하면 봉사시간이 인증되나요??????</span>
						<img src="/img/news/arrowDown.png">
					</div>
					<p class="question-content3">
					아니요, 활동 후 반드시 쓰담 기록지를 제출해주셔야 합니다.
					</p>
				</li>
			</ul>
		</div>
	</div>
	
	<script>
		$(".question-icon>img").on("click",function(){
			if($(this).parent().hasClass("active")) {
				$(this).parent().removeClass("active");
				$(this).parent().next().css("height","0px");
				$(".question-icon>img").attr("src","/img//news/arrowDown.png");
			} else {
				$(this).parent().addClass("active");
				$(this).parent().next().css("height","60px");
				$(".question-icon>img").attr("src","/img//news/arrowUp.png");
			}
		});
		$(".question-icon2>img").on("click",function(){
			if($(this).parent().hasClass("active")) {
				$(this).parent().removeClass("active");
				$(this).parent().next().css("height","0px");
				$(".question-icon2>img").attr("src","/img//news/arrowDown.png");
			} else {
				$(this).parent().addClass("active");
				$(this).parent().next().css("height","60px");
				$(".question-icon2>img").attr("src","/img//news/arrowUp.png");
			}
		});
		
		
	</script>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>