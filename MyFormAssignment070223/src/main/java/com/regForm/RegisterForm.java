package com.regForm;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterForm extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		String name=req.getParameter("name");
		String password=req.getParameter("password");
		String email=req.getParameter("email");
		String gender=req.getParameter("gender");
		String course=req.getParameter("course");
		
		
		PrintWriter out=res.getWriter();
		//System.out.println("on? "+req.getParameter("terms").toString());
		if(req.getParameter("terms")==null)
			out.println("<h1>Welcome to Register Servlet</h1><br>"+"<b>you have not accepted terms</b>");
		else //if(req.getParameter("terms").equals("on")) 
		{
			String result="<h1>Welcome to Register Servlet</h1><br>"+
					"Name: "+name+"<br>Password: "+password+
					"<br>Email"+email+"<br>Gender: "+gender+
					"<br>Course: "+course+req.getParameter("terms");
			
			
			System.out.println("result is: "+result);
			
			
			out.println(result);
		}
	}
}
