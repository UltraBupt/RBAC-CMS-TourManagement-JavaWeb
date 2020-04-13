package com.gs.tour.shxt.aroundtourism.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gs.tour.shxt.aroundtourism.service.AroundTourismService;
import com.gs.tour.shxt.base.model.PageBean;

/**
 * Servlet implementation class AroundTourismServlet
 */
@WebServlet("/AroundTourismServlet.shxt")
public class AroundTourismServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//接收分页数据
		String pageNow=request.getParameter("pageNow");
		PageBean pageBean=new PageBean();
		if(pageNow!=null){
			pageBean.setPageNow(Integer.parseInt(pageNow));
		}
		AroundTourismService aroundTourismService=new AroundTourismService();
		request.setAttribute("pageBean", aroundTourismService.getAllAroundTourismList(pageBean));
		request.getRequestDispatcher("WEB-INF/jsp/aroundTourism/list.jsp").forward(request, response);
	}

}
