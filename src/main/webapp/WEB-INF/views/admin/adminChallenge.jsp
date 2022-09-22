<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>관리자페이지 - 챌린지관리</title>
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
                    <h1>챌린지관리</h1>
                </div>
                <div class="content-body" style="">
                    <ul class="challenge-list">
                        <li>
                            <h5>김광섭님의 퀘스트 완료 신청</h5>
                            <dl><dt>신청일</dt><dd>2022.10.01</dd><dt>지역</dt><dd>서울</dd></dl>
                            <div class="collapse" id="detail1">
                                <div class="collapse-body">
                                    <h6>인증샷</h6>
                                    <div class="challenge-img">
                                        <img src="img/img-banner-donation.jpeg" alt="">
                                    </div>
                                    <h6>신청품목</h6>
                                    <table class="tbl challenge-tbl" width="300">
                                        <colgroup>
                                            <col width="10%">
                                        </colgroup>
                                        <thead>
                                        <tr>
                                            <th>종류</th>
                                            <th>캔류</th>
                                            <th>유리류</th>
                                            <th>종이류</th>
                                            <th>페트류</th>
                                            <th>기타/일반</th>
                                            <th>비닐류</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <th>개수</th>
                                            <td>2</td>
                                            <td>1</td>
                                            <td>0</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>0</td>
                                        </tr>
                                        <tr>
                                            <th>총점</th>
                                            <td>6</td>
                                            <td>3</td>
                                            <td>0</td>
                                            <td>2</td>
                                            <td>1</td>
                                            <td>0</td>
                                        </tr>
                                        </tbody>

                                    </table>
                                    <div class="btn-group">
                                        <button type="button" class="btn bc2 f-bold">승인</button>
                                        <button type="button" class="btn bc6 f-bold">거절</button>
                                    </div>
                                </div>
                            </div>

                            <button type="button" class="btn bc2" data-toggle="collapse" data-target="#detail1">상세보기</button>

                        </li>
                        <li>
                            <h5>김광섭님의 퀘스트 완료 신청</h5>
                            <dl><dt>신청일</dt><dd>2022.10.01</dd><dt>지역</dt><dd>서울</dd></dl>

                            <div class="collapse" id="detail2">
                                <div class="collapse-body">
                                    <h6>인증샷</h6>
                                    <div class="challenge-img">
                                        <img src="img/img-banner-donation.jpeg" alt="">
                                    </div>
                                    <h6>신청품목</h6>
                                    <table class="tbl challenge-tbl" width="300">
                                        <colgroup>
                                            <col width="10%">
                                        </colgroup>
                                        <thead>
                                        <tr>
                                            <th>종류</th>
                                            <th>캔류</th>
                                            <th>유리류</th>
                                            <th>종이류</th>
                                            <th>페트류</th>
                                            <th>기타/일반</th>
                                            <th>비닐류</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <th>개수</th>
                                            <td>2</td>
                                            <td>1</td>
                                            <td>0</td>
                                            <td>1</td>
                                            <td>1</td>
                                            <td>0</td>
                                        </tr>
                                        <tr>
                                            <th>총점</th>
                                            <td>6</td>
                                            <td>3</td>
                                            <td>0</td>
                                            <td>2</td>
                                            <td>1</td>
                                            <td>0</td>
                                        </tr>
                                        </tbody>

                                    </table>
                                    <div class="btn-group">
                                        <button type="button" class="btn bc2 f-bold">승인</button>
                                        <button type="button" class="btn bc6 f-bold">거절</button>
                                    </div>
                                </div>
                            </div>

                            <button type="button" class="btn bc2" data-toggle="collapse" data-target="#detail2">상세보기</button>

                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <!-- // content -->
    <%@include file="/WEB-INF/views/common/footer.jsp" %>
    <script src="/js/sideMenu.js"></script>
    <script>

        const collapseBtn = document.querySelectorAll("[data-toggle='collapse']");

        collapseBtn.forEach(function(item, index) {
            item.addEventListener("click", function() {

                const collapseTarget = document.querySelector(this.dataset.target);
                const collapseBody = collapseTarget.querySelector(".collapse-body");
                const bodyHeight = collapseBody.offsetHeight;

                if(collapseTarget.classList.contains("active")) {
                    this.innerText = "상세보기";
                    collapseTarget.classList.remove("active");
                    collapseTarget.style.height = 0 +"px";
                } else {
                    this.innerText = "간략히";
                    collapseTarget.classList.add("active");
                    collapseTarget.style.height = bodyHeight+"px";
                }
            })
        })

    </script>
</div>
</body>
</html>
