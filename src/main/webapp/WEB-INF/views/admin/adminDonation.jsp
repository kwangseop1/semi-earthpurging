
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>관리자페이지 - 후원관리</title>
    <link rel="stylesheet" href="/css/style-mypage-admin.css">
    <style>
        .btn:disabled{
            opacity: .5;
        }
    </style>
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
                    <h1>후원관리</h1>
                </div>
                <div class="content-body" style="padding-left:0;padding-right:0;">

                    <table class="tbl tbl-hover user-tbl">
                        <colgroup>
                            <col width="auto">
                            <col width="auto">
                            <col width="auto">
                            <col width="auto">
                            <col width="15%">
                        </colgroup>
                        <tbody>
                        <tr class="tr-5">
                            <th>신청자</th>
                            <th>아이디</th>
                            <th>전화번호</th>
                            <th>후원금액</th>
                            <th></th>
                        </tr>
                        <tr class="">
                            <td>김광섭</td>
                            <td>kks22</td>
                            <td>010-0523-1234</td>
                            <td class="td-amount">100,000</td>
                            <td><button type="button" class="btn bc4">후원 취소</td>
                        </tr>
                        <tr class="">
                            <td>김광섭</td>
                            <td>kks22</td>
                            <td>010-0523-1234</td>
                            <td class="td-amount">100,000</td>
                            <td><button type="button" class="btn bc4">후원 취소</td>
                        </tr>
                        <tr class="">
                            <td>김광섭</td>
                            <td>kks22</td>
                            <td>010-0523-1234</td>
                            <td class="td-amount">100,000</td>
                            <td><button type="button" class="btn bc4">후원 취소</td>
                        </tr>

                        <tr class="row-total">
                            <td colspan="4">
                                <dl>
                                    <dt>총 금액</dt>
                                    <dd>300,000 <span>원</span></dd>
                                </dl>
                            </td>
                            <td></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- // content -->
    <%@include file="/WEB-INF/views/common/footer.jsp" %>
    <script src="/js/sideMenu.js"></script>
</div>
</body>
</html>
