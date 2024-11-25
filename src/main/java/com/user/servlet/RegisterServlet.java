package com.user.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.annotation.*;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

import com.DAO.UserDAOimpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String phno =req.getParameter("phno");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			
			//System.out.println(name+" "+email+" "+phno+" "+password+" "+check);
			User us=new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			us.setPassword(password);
			
			HttpSession session=req.getSession();
			if(check!=null) {
			
			UserDAOimpl dao=new UserDAOimpl(DBConnect.getConn());
			boolean f=dao.userRegister(us);
			
			
			
			if(f) {
				//System.out.println("User Register Success");
				
				session.setAttribute("succMsg", "Registration Successful..");
				resp.sendRedirect("register.jsp");
			} else {
				//System.out.println("Something Wrong");
				session.setAttribute("failedMsg", "Something Wrong on Server");
				resp.sendRedirect("register.jsp");
			}
			} else {
				
				//System.out.println("Please Check Agree and Terms");
				session.setAttribute("failedMsg", "Please Check Agree and Terms");
				resp.sendRedirect("register.jsp");
			}
			
		}catch (Exception e){
			
			e.printStackTrace();
		}
		
	}

}
