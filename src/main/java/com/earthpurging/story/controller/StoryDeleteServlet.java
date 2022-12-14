package com.earthpurging.story.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.earthpurging.story.model.service.StoryService;
import com.earthpurging.story.model.vo.Story;

/**
 * Servlet implementation class StoryDeleteServlet
 */
@WebServlet(name = "StoryDelete", urlPatterns = { "/storyDelete.do" })
public class StoryDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoryDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//값추출
		int storyNo = Integer.parseInt(request.getParameter("storyNo"));
		//비즈니스로직
		StoryService service = new StoryService();
		Story s = service.deleteStory(storyNo);
		//결과처리
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");
		if(s != null) {
			//삭제 성공했을 때 
			if(s.getPhotoPath() != null) {
				//첨부파일이 있을 때 
				String root=getServletContext().getRealPath("/");
				String deleteFile = root+"upload/story"+s.getPhotoPath();
				File delFile = new File(deleteFile);
				delFile.delete();
			}
			request.setAttribute("title", "삭제완료");
			request.setAttribute("msg", "스토리가 삭제되었습니다.");
			request.setAttribute("icon", "success");
		}else {
			request.setAttribute("title", "삭제실패");
			request.setAttribute("msg", "스토리 삭제에 실패하였습니다.");
			request.setAttribute("icon", "error");
		}
		request.setAttribute("loc", "/storyList.do?reqPage=1");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
