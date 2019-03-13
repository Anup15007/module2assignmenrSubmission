package com.cg.project.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/date")
public class DateServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public DateServlet() {
		super();
		
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		Date date=new Date();
		out.print("<html><body>");
		out.println("<div><font color=red size=8>Today date and time:"+date.toString()+"</font></div>");
		out.print("</body></html>");
	}

	
	

}
