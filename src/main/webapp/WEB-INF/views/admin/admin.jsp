
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>관리자페이지</title>
    <link rel="stylesheet" href="/css/style-mypage-admin.css">
</head>
<body>
<div class="wrapper">
    <%@include file="/WEB-INF/views/common/header.jsp" %>
    <!-- content -->
    <div class="page-content">

        <div class="content-wrap flex">
            <%@include file="adminSide.jsp"%>
            <div class="content-container">
                <div class="content-title">
                    <h1>관리자 메인</h1>
                </div>
                <div class="content-body">
                    <h3 class="title-name"><span class="nickname">관리자</span> 님, 안녕하세요.</h3>
                    <div class="info-container">
                        <div class="info-box w-60">
                            <h4>총 후원금액</h4>
                            <div class="flex flex-align-enter">
                                <p class="total-donation">12,320,050</p>
                            </div>
                        </div>
                        <div class="info-box w-40">
                            <h5>대기중인 문의</h5>
                            <div class="flex flex-evenly flex-align-end">
                                <dl class="flex flex-col"><dt class="fc-2">0</dt><dd>문의대기</dd></dl>
                                <!-- <dl class="flex flex-col"><dt class="fc-5">0</dt><dd>답변완료</dd></dl> -->
                                <a href="" class="btn bc2">답변하러가기 </a>
                            </div>
                        </div>
                        <div class="info-box w-100 plogging-result">
                            <h3>현재까지 플로깅으로 줍것들</h3>
                            <ul class="challenge-result-list flex">
                                <li>
                                    <img src="img/img-recycle-can.png" alt="캔">
                                    <span>10</span>
                                </li>
                                <li>
                                    <img src="img/img-recycle-plastic.png" alt="플라스틱">
                                    <span>12</span>
                                </li>
                                <li>
                                    <img src="img/img-recycle-glass.png" alt="유리">
                                    <span>21</span>
                                </li>
                                <li>
                                    <img src="img/img-recycle-paper.png" alt="종이">
                                    <span>22</span>
                                </li>
                                <li>
                                    <img src="img/img-recycle-plastic2.png" alt="비닐류">
                                    <span>18</span>
                                </li>
                                <li>
                                    <img src="img/img-trash-tobacco.png" alt="담배꽁초">
                                    <span>12</span>
                                </li>
                            </ul>
                        </div>
                        <!-- <div class="info-box w-50">
                            <h3>공지사항</h3>
                            <a href="javascript:void(0)" class="btn bc6 br-none">공지사항 등록하기</a>
                        </div> -->
                        <!-- <div class="info-box w-100">
                            <h3>지구를 위해 후원해주세요</h3>
                            <a href="javascript:void(0)" class="btn bc6 br-none">후원하기</a>
                        </div> -->
                    </div>

                </div>

            </div>
        </div>
    </div>
    <!-- // content -->
    <%@include file="/WEB-INF/views/common/footer.jsp" %>
</div>
</body>
</html>
