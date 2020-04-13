package com.gs.tour.shxt.a.web.ship.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gs.tour.shxt.a.web.ship.service.WebShipService;

/**
 * Servlet implementation class ShipBought
 */
@WebServlet("/ShipBought.html")
public class ShipBought extends HttpServlet {
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
		String ship_id=request.getParameter("ship_id");
		WebShipService webShipServcie=new WebShipService();
		request.setAttribute("ship", webShipServcie.queryShipByShipId(Integer.parseInt(ship_id)));
		request.getRequestDispatcher("WEB-INF/web/ship/shipBought.jsp").forward(request, response);
	}

}
