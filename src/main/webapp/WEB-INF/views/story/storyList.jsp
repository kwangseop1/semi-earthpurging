
<%@page import="com.earthpurging.story.model.vo.Story"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	ArrayList<Story> list =(ArrayList<Story>)request.getAttribute("list");
  		String pageNavi = (String)request.getAttribute("pageNavi");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PHOTO STORY</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="/css/PhotoStory.css">
<style>
	#pageNavi{
		margin: 30px;
		textalign : center;
	}

</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	
	<div class="page-content">
    	<div class="story-title">
        	<h1>PHOTO STORY</h1>
            <div><a href="/storyWriteFrm.do" class="btn bc3">후기쓰기</a></div>
        </div>
        <div class="mid-content">
            <div class="story-menu">
            	<ul>
               		<li><a ref="storyList.do?reqPage=1">PHOTO STORY</a></li>
                    <li><a ref="#">COMMUNITY</a></li>
               	</ul>
           	</div> 
            <div class="story-wrap">
              	<div class="storylist"> 
              	<%for(Story s : list) { %>
                	<div class="story-box">
                        <div class="photo-box">
                       	<!--예시이미지-->
                       	
                        <a href="#상세페이지"><img src="/upload/story/<%=s.getPhotoPath() %>"></a>
                   		</div>
                       	<div class="like-box">
							<span id="storyWriter"><%=s.getNickname() %></span>
                            <span class="material-symbols-outlined">favorite</span>
                            </div> 
                        <div class="story-text">
                       		<a href="#상세페이지"><span><%=s.getStoryContent() %></span></a>
                        </div>
                        <div class="pix-area">
                            <a href="/storyUpdateFrm.do?storyNo=<%=s.getStoryNo()%>" class="btn bc2">수정</a>
                            <a href="/storyDelete.do?storyNo=<%= s.getStoryNo()%> "class="btn bc2">삭제</a>
                        </div>  
                	</div>
      			<%} %>
                </div>
           	</div>
      	</div>
        <div id="pageNavi"><%=pageNavi %></div>
    </div>
	
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>