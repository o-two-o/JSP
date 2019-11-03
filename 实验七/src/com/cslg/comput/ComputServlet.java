package com.cslg.comput;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cslg.Bean.Triangle;

/**
 * Servlet implementation class ComputServlet
 */
public class ComputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ComputServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		double length1;
		double length2;
		double length3;
		
		try {
			length1 = Double.parseDouble(request.getParameter("length1"));
			length2 = Double.parseDouble(request.getParameter("length2"));
			length3 = Double.parseDouble(request.getParameter("length3"));

		} catch (NumberFormatException e) {
			// TODO: handle exception
			session.setAttribute("error", "请输入正确格式的数字");
			response.sendRedirect(request.getContextPath() + "/input.jsp");
			return;
		}
		
		if (length1 <= 0||length2 <= 0||length3 <= 0) {
			session.setAttribute("error", "请输入大于0的数字");
			response.sendRedirect(request.getContextPath() + "/input.jsp");
			return;
		}
		
		Triangle triangle = new Triangle(length1, length2, length3);
		if(!isTriangle(triangle)) {
			session.setAttribute("error", "输入的三条边不能组成三角形，请重新输入");
			response.sendRedirect(request.getContextPath() + "/input.jsp");
			return;
		}
		
		double area = computArea(triangle);
		session.setAttribute("area", area);
		response.sendRedirect(request.getContextPath() + "/show.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private boolean isTriangle(Triangle triangle) {
		if ((triangle.getLength1() + triangle.getLength2() > triangle.getLength3()) 
				&& (triangle.getLength1() + triangle.getLength3() > triangle.getLength2()) 
				&& (triangle.getLength3() + triangle.getLength2() > triangle.getLength1())) {
			return true;
		}
		return false;
	}

	private double computArea(Triangle triangle) {
		double area = 0;
		double p = (triangle.getLength1() + triangle.getLength2() + triangle.getLength3()) / 2;
		area = Math.sqrt(p * (p - triangle.getLength1()) * (p - triangle.getLength2()) * (p - triangle.getLength3()));
		return area;
	}

}
