package com.Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Providers.PdfGenerationProvider;
import com.Services.PdfGenerationInterface;
import com.beans.Cart;
import com.beans.DeliveryLocation;

/**
 * Servlet implementation class PdfGeneration
 */
@WebServlet("/PdfGeneration")
public class PdfGeneration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PdfGenerationInterface businessLogicInterface;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PdfGeneration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		businessLogicInterface=PdfGenerationProvider.getObject();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	//servlet controller after to generate bill pdf
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			String orderId=(String) session.getAttribute("orderId");
			String date=(String) session.getAttribute("date");
			DeliveryLocation dl=(DeliveryLocation) session.getAttribute("deliveryLocation");
			String deliveryLocation=dl.toString();
			String total=String.valueOf(session.getAttribute("total"));
			String discount=(String) session.getAttribute("discount");
			businessLogicInterface.pdfGeneration(orderId, date, deliveryLocation, total, discount);
			String msg="your order pdf has been generated";
			session.setAttribute("msg", msg);
			RequestDispatcher rd=request.getRequestDispatcher("OrderConfirm.jsp");
			rd.include(request,response);
		}
		else
		{
			request.setAttribute("msg","session time out");
			RequestDispatcher rd=request.getRequestDispatcher("SignIn.jsp");
			rd.forward(request, response);
		}
	}

}
