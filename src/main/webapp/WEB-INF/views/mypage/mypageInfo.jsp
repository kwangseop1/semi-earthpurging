
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>마이페이지 - 내정보</title>
    <link rel="stylesheet" href="/css/style-mypage-admin.css">
</head>
<body>
    <div class="wrapper">
        <%@include file="/WEB-INF/views/common/header.jsp" %>
        <!-- content -->
        <div class="page-content mypage-info">

            <div class="content-wrap flex">
                <%@include file="mypageSide.jsp"%>
                <div class="content-container">
                    <div class="content-title">
                        <h1>나의 정보</h1>
                        <p>오늘도 열심히 푸르깅!</p>
                    </div>
                    <div class="content-body">
                        <form action="">
                            <div class="input-line">
                                <label for="memberId">아이디</label>
                                <input type="text" name="memberId" id="memberId" class="input-form" value="user01" readonly>
                            </div>
                            <div class="input-line">
                                <label for="memberPw">비밀번호</label>
                                <button type="button" class="btn bc2 btn-pw-change">비밀번호변경</button>
                            </div>
                            <div class="input-line" style="display:none">
                                <!-- <label for="memberPw">비밀번호</label> -->
                                <input type="password" name="memberPw" id="memberPw" class="input-form" value="" readonly>
                            </div>
                            <div class="input-line" style="display:none">
                                <label for="memberPwRe">비밀번호 확인</label>
                                <input type="password" name="memberPwRe" id="memberPwRe" class="input-form" value="" readonly>
                            </div>
                            <div class="input-line">
                                <label for="memberName">이름</label>
                                <input type="text" name="memberName" id="memberName" class="input-form" value="김유저" readonly>
                            </div>
                            <div class="input-line">
                                <label for="memberEmail">이메일</label>
                                <input type="text" name="memberEmail" id="memberEmail" class="input-form" value="user01@gmail.com" readonly>
                            </div>
                            <div class="input-line">
                                <label for="memberAddr">주소</label>
                                <div class="input-group">
                                    <input type="text" name="memberAddr" id="memberAddr" class="input-form" value="서울시 마포구" readonly>
                                    <button type="button" class="btn bc1 br-none btn-addr-search" disabled>주소검색</button>
                                </div>
                                <input type="text" class="input-form" id="addrDetail" id="addrDetail" placeholder="상세주소"  readonly>
                            </div>
                            <div class="input-line">
                                <label for="totalPoint">플로깅 점수</label>
                                <input type="text" name="totalPoint" id="totalPoint" class="input-form" readonly>
                            </div>

                            <button type="button" class="btn-del">회원탈퇴하기</button>

                            <div class="form-btn">
                                <button type="button" class="btn bc4 ">수정하기</button>
                            </div>

                        </form>
                    </div>

                </div>
            </div>
        </div>
        <!-- // content -->
        <%@include file="/WEB-INF/views/common/footer.jsp" %>
        <script src="/js/mypage.js"></script>
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script>

            const searchBtn = document.querySelector(".btn-addr-search");
            searchBtn.addEventListener("click", function() {
                new daum.Postcode({
                    oncomplete: function(data) {
                        console.log(data);
                        const addrForm1 = document.querySelector("#memberAddr");
                        const address = data.address;
                        addrForm1.value = address;

                    }
                }).open();
            })


            const btnPwChange = document.querySelector(".btn-pw-change");

            btnPwChange.addEventListener("click", function(){

                const pwForm1 = document.querySelector("[name=memberPw]");
                const pwForm2 = document.querySelector("[name=memberPwRe]");


                if(!this.classList.contains("active")){
                    pwForm1.parentNode.style.display = "flex";
                    pwForm2.parentNode.style.display = "flex";
                    this.classList.add("active");
                } else {

                    pwForm1.parentNode.style.display = "none";
                    pwForm2.parentNode.style.display = "none";
                    this.classList.remove("active");
                }

            })
        </script>
    </div>
</body>
</html>
