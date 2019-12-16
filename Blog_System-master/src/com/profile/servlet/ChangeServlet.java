package com.profile.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.profile.Dao.ChangeDao;
import com.profile.entity.ProfileEntity;

@WebServlet("/ChangeServlet")
public class ChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ChangeServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String user_name = (String) request.getSession().getAttribute("user_name");
		String intro = request.getParameter("intro");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String birthday = request.getParameter("birthday");
		String location = request.getParameter("location");
		String occupational = request.getParameter("occupational");
		ProfileEntity profile = new ProfileEntity(user_name,intro,name,gender,birthday,location,occupational);
		
		ChangeDao.ProfileChange(profile);
		response.sendRedirect("personal_data.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
