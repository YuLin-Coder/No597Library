package com.henu.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henu.factory.DaoFactory;

@WebServlet("/DeleteStudent")
public class DeleteOneStudent  extends  HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public DeleteOneStudent() {
		// TODO Auto-generated constructor stub
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
	/*	HttpSession session = request.getSession();
		if(DaoFactory.getInfoDaoImpl().select(bookname)){
			session.setAttribute("error", "<script> alert('此书被借出，不可删除！')</script>");
		}*/
			
			DaoFactory.getStudentDaoImpl().deleteStudent(id);
		
		request.getRequestDispatcher("FenYe").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}
