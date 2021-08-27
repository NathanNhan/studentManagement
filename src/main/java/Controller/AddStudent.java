package Controller;

import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.StudentDAO;
import Models.Student;

/**
 * Servlet implementation class AddStudent
 */
@WebServlet("/AddStudent")
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//StudentDAO sDAO = new StudentDAO();
		int rollnumber = Integer.parseInt(request.getParameter("rollnumber"));
		String name = request.getParameter("sname");
		String email = request.getParameter("semail");
		int phone = Integer.parseInt(request.getParameter("sphone"));
		String branch = request.getParameter("branch");
		System.out.println(branch);
		int sem = Integer.parseInt(request.getParameter("sem"));
		String grade = request.getParameter("sgrade");
		Student s = new Student();
		s.setRollno(rollnumber);
		s.setName(name);
		s.setGrade(grade);
		s.setEmail(email);
		s.setPhone(phone);
		s.setBranch(branch);
		s.setSem(sem);
		System.out.println(s);
        boolean flag = StudentDAO.saveStudent(s);
        if(flag = true) {
        	HttpSession session = request.getSession();
        	session.setAttribute("status","added successfully");
        	response.sendRedirect("ListController");
        } else {
        	PrintWriter out = response.getWriter();
        	out.println("Data not added successfully");
        }
//		sDAO.addStudent(rollnumber, name, branch, sem, grade, email, phone);
//		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//		rd.include(request, response);
		
	}

}
