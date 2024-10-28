package com.henu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henu.bean.Student;
import com.henu.factory.DaoFactory;

/**
 * Servlet implementation class AddOneStudent
 */
@WebServlet("/AddOneStudent")
public class AddOneStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddOneStudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("sno");
		String type = request.getParameter("type");
		String name = request.getParameter("xingming");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String department = request.getParameter("yuan");
		Student student = new Student(id, name, gender, phone, email, department, 0);
		int result = DaoFactory.getStudentDaoImpl().addStudent(student);
		HttpSession session = request.getSession();
		if(result > 0){
			session.setAttribute("success", "<script>alert('添加成功!')</script>");
		}else{
			session.setAttribute("error", "<script>alert('添加失败!')</script>");
		}
		String studentId=(String) session.getAttribute("studentId");
		String masterId=(String) session.getAttribute("masterId");
		if(type.equals("admin")) {
			request.getRequestDispatcher("FenYe").forward(request, response);
		
		}
		if(type.equals("student") ){
			request.getRequestDispatcher("mainLogin.jsp").forward(request, response);
		}
		System.out.println(studentId+"ssss"+masterId);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
