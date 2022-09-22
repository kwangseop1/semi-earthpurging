
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
                	<div class="story-box" data-idx="<%=s.getStoryNo()%>">
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
        
        <div class="story-modal">
                <div class="modal-wrap">
                    <div class="modal-top">
                        <h1><span id="story-nickname"></span>님의 PHOTO STORY</h1>
                        <span class="material-symbols-outlined" id="modal-close">close</span>
                    </div>
                    <div class="modal-mid">
                        <div class="modal-photo" id="modal-photo">
                            <img id="story-img" src=""><br>
                            <span id="read-count"></span>
                            <span id="reg-date"></span>
                        </div>
                        <div class="modal-text">
                            <span id="modal-text"></span>
                        </div>
                    </div>
                    <div class="story-comment">
                        <ul class="posting-comment">
                            <li>
                                <p class="comment-info">
                                    <span>작성자</span>
                                    <span>작성일</span>
                                </p>
                                <p class="comment-content">굿 너무 멋있네요. 쓰레기를 많이 주워서 제 랭킹을 따라잡아 보세요</p>                
                            </li>
                        </ul>
                    </div>
                    <div class="input-comment-box">
                        <form action="#" method="post">
                            <ul>
                                <li>
                                    <input type="hidden" name="st-comment-writer" value="코멘트작성자">
                                    <textarea class="input-form" name="sc-content"></textarea>
                                </li>
                                <li>
                                    <button type="submit" class="btn bc5 bs4">댓글달기</button>
                                </li>
                            </ul>
                        </form> 
                    </div>
            </div>
    </div>
	
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	<script>
	
	const nickname = $("#story-nickname");
	const img = $("#story-img");
	const storyContent = $("#modal-text");
	const storyReadCount = $("#read-count");
	const storyRegDate = $("#reg-date");
	
	
	/*상세페이지 닫기*/ 
	$("#modal-close").on("click",function(){
	    $(".story-modal").css("display","none");
	    nickname.empty();
	    img.attr("str","");
	    storyContent.empty();
	    storyReadCount.empty();
	    storyRegDate.empty();
	});

	/*상세페이지 띄우기*/
	$(".photo-box").on("click",function(){
	    $(".story-modal").css("display","flex");
	});
	
	$(".story-box").on("click",function(){
		const storyIdx = $(this).attr("data-idx");
		console.log(storyIdx);
		
		$.ajax({
			url: "/storyView.do",
			type: "get",
			data: {storyNo : storyIdx},
			dataType : "json",//json타입인 것을 명시 2(servlet에서 명시하거나 jsp에서 명시)
			success: function(data){
				if(data == null){
					//.append("회원 정보를 조회할 수 없습니다.");
				}else{
					nickname.append(data.nickname);
					img.attr("src","/upload/story/"+data.photoPath);
					storyContent.append(data.storyContent);
					storyReadCount.append("조회수 : "+data.storyReadCount);
					storyRegDate.append(data.storyRegDate);
					//result.append("이름 : "+data.memberName+"<br>");
					//result.append("전화번호 : "+data.memberPhone+"<br>");
					
				}
			},
			error: function(){
				console.log("정보조회실패");
			}
		})
	});
	
	</script>
</body>
</html>