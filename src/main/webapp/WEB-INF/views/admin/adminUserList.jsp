
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>관리자 - 회원관리</title>
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
                    <h1>회원관리</h1>
                </div>
                <div class="content-body" style="padding-left:0;padding-right:0;">

                    <table class="tbl tbl-hover user-tbl">

                        <tbody>
                        <tr class="tr-5">
                            <th>이름</th>
                            <th>아이디</th>
                            <th>전화번호</th>
                            <th>이메일</th>
                            <th>주소</th>
                            <th></th>
                            <!-- <th></th> -->
                        </tr>
                        <tr class="">
                            <td>김광섭</td>
                            <td>kks22</td>
                            <td>010-0523-1234</td>
                            <td>kks22@naver.com</td>
                            <td>인천시 서구 청라커낼로 163</td>
                            <td><button type="button" class="btn bc2">삭제</button></td>
                        </tr>
                        <tr class="">
                            <td>김동환</td>
                            <td>dh22</td>
                            <td>010-0523-1234</td>
                            <td>dh22@naver.com</td>
                            <td>서울시 마포구 동교동</td>
                            <td><button type="button" class="btn bc2">삭제</button></td>
                        </tr>

                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
    <!-- // content -->
    <%@include file="/WEB-INF/views/common/footer.jsp" %>
</div>
</body>
</html>
