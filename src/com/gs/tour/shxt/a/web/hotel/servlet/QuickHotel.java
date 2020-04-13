package com.gs.tour.shxt.a.web.hotel.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gs.tour.shxt.a.web.hotel.service.WebHotelService;

/**
 * Servlet implementation class QuickHotel
 */
@WebServlet("/QuickHotel.html")
public class QuickHotel extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		WebHotelService webHotelService=new WebHotelService();
		request.setAttribute("hotel", webHotelService.getHotelList());
		request.getRequestDispatcher("WEB-INF/web/hotel/hotel.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
