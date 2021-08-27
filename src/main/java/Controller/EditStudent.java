package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.StudentDAO;
import Models.Student;

/**
 * Servlet implementation class EditStudent
 */
@WebServlet("/EditStudent")
public class EditStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		Student s = StudentDAO.getStudentById(id);
		request.setAttribute("student", s);
		RequestDispatcher dispatcher = request.getRequestDispatcher("editStudent.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		int rollnumber = Integer.parseInt(request.getParameter("rollnumber"));
		String name = request.getParameter("sname");
		String email = request.getParameter("semail");
		int phone = Integer.parseInt(request.getParameter("sphone"));
		String branch = request.getParameter("branch");
		System.out.println(branch);
		int sem = Integer.parseInt(request.getParameter("sem"));
		String grade = request.getParameter("sgrade");
		Student s = new Student();
		s.setId(id);
		s.setRollno(rollnumber);
		s.setName(name);
		s.setGrade(grade);
		s.setEmail(email);
		s.setPhone(phone);
		s.setBranch(branch);
		s.setSem(sem);
		int result = StudentDAO.updateStudentById(s);
		if(result > 0) {
			response.sendRedirect("ListController");
		} else {
			PrintWriter out = response.getWriter();
        	out.println("Update student unsuccessfully!");
		}
	}

}
