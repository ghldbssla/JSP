package com.koreait.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.calculator.Calc;

/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public MyServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String input = request.getParameter("input");
		String opers="+-*/";
		boolean flag = false;
		char oper = ' ';
		for (int i = 0; i < input.length(); i++) {
			char ch = input.charAt(i);
			if(opers.contains(ch+"")) {
				flag=true;
				oper = ch;
			}
		}
		String result = "";
		//10+7
		if(flag) {
			
			String[] numbers = input.split("\\"+oper);
			Calc c = new Calc(oper, numbers[0], numbers[1]);
			result = c.submit();
		}else {
			result = "수식을 입력하세요.";
		}
		
		out.print("<html><body><p>결과 : ");
		out.print(result);
		out.print("<a href='index.html'>다시 계산하기</a>");
		out.print("</p></body></html>");
		//Hello JSP
		
//		out.println("<html><body>");
//		out.println("<hr><h2>반갑습니다</h2><br>");
//		out.println("서블릿으로 만든 페이지");
//		out.println("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
















