
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>마이페이지</title>
    <link rel="stylesheet" href="/css/style-mypage-admin.css">
</head>
<body>
    <div class="wrapper">
        <%@include file="/WEB-INF/views/common/header.jsp" %>
        <!-- content -->
        <div class="page-content">

            <div class="content-wrap flex">
                <%@include file="mypageSide.jsp"%>
                <div class="content-container">
                    <div class="content-title">
                        <h1>마이페이지</h1>
                        <p>오늘도 열심히 푸르깅!</p>
                    </div>
                    <div class="content-body">
                        <h3 class="title-name"><span class="nickname">줍줍</span> 님, 안녕하세요.</h3>
                        <div class="info-container">
                            <div class="info-box w-60">
                                <h4>지구를 아껴준 점수</h4>
                                <span class="user-grade">STONE 등급</span>
                                <div class="flex flex-align-enter">
                                    <div class="user-score">
                                        <span class="user-score-bar"></span>
                                    </div>
                                    <span class="user-score-status"><span>24 /</span> 50</span>
                                </div>

                                <span class="user-score-msg">다음등급까지 남은점수 <span>26</span></span>
                            </div>
                            <div class="info-box w-40">
                                <h5>최근 문의내역</h5>
                                <div class="flex flex-evenly">
                                    <dl class="flex flex-col"><dt class="fc-2">0</dt><dd>문의대기</dd></dl>
                                    <dl class="flex flex-col"><dt class="fc-5">0</dt><dd>답변완료</dd></dl>
                                </div>
                            </div>
                            <div class="info-box w-100 progging">
                                <h3>지구를 <span class="fc-1">푸르게</span> 하는 <span>플로깅</span></h3>
                                <a href="javascript:void(0)" class="btn bc6 br-none">참여하기</a>
                            </div>
                            <div class="info-box w-100 donation">
                                <h3>지구를 위해 후원해주세요</h3>
                                <a href="javascript:void(0)" class="btn bc6 br-none">후원하기</a>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
        <!-- // content -->
        <%@include file="/WEB-INF/views/common/footer.jsp" %>
        <script src="/js/mypage.js"></script>
    </div>
</body>
</html>
