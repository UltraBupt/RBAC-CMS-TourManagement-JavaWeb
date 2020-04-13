package com.gs.tour.shxt.a.web.tour.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gs.tour.shxt.a.web.tour.service.WebAroundHotTourismService;

/**
 * Servlet implementation class AroundHotTourism
 */
@WebServlet("/AroundHotTourism.html")
public class AroundHotTourism extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		WebAroundHotTourismService webAroundHotTourismService=new WebAroundHotTourismService();
		request.setAttribute("aroundHotTourism", webAroundHotTourismService.getAroundTourismList());
		request.getRequestDispatcher("WEB-INF/web/tour/aroundHot.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
