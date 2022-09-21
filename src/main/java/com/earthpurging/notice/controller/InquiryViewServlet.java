package com.earthpurging.notice.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.earthpurging.notice.model.service.NoticeService;
import com.earthpurging.notice.model.vo.Inquiry;

/**
 * Servlet implementation class InquiryViewServlet
 */
@WebServlet(name = "InquiryView", urlPatterns = { "/inquiryView.do" })
public class InquiryViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InquiryViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int inquiryNo = Integer.parseInt(request.getParameter("inquiry_no"));
		NoticeService service = new NoticeService();
		Inquiry inq = service.selectOneInquiry(inquiryNo);
		
		if(inq == null) {
			RequestDispatcher view = request.getRequestDispatcher("WEB-INF/view/common/msg.jsp");
			request.setAttribute("title", "조회실패");
			request.setAttribute("msg", "게시글이 존재하지 않습니다.");
			request.setAttribute("icon", "info");
			request.setAttribute("loc", "/inquiryList.do?reqPage=1");
		}else {
			RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/notice/inquiryView.jsp");
			request.setAttribute("inq", inq);
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
