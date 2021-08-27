package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

import Models.Student;

public class StudentDAO {
	public static boolean saveStudent (Student s)  {
		boolean flag = false;
		try {
			//load driver
			Class.forName("com.mysql.jdbc.Driver");
			//connection 
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/sms","root","");
			PreparedStatement pst = con.prepareStatement("INSERT INTO students(rollno,name,branch,sem,grade,email,phone) values (?,?,?,?,?,?,?)");
			pst.setInt(1, s.getRollno());
			pst.setString(2, s.getName());
			pst.setString(3, s.getBranch());
			pst.setInt(4, s.getSem());
			pst.setString(5, s.getGrade());
			pst.setString(6, s.getEmail());
			pst.setInt(7, s.getPhone());
			pst.executeUpdate();
			flag = true;
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	public static List<Student> getAllStudent(){
		List<Student> list = new ArrayList<Student>();
		try {
			//load driver
			Class.forName("com.mysql.jdbc.Driver");
			//connection 
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/sms","root","");
			Statement statement = (Statement) con.createStatement();
			ResultSet rs = (ResultSet) statement.executeQuery("SELECT * from students");
			while(rs.next()) {
				Student s = new Student();
				s.setId(rs.getInt("id"));
				s.setRollno(rs.getInt("rollno"));
				s.setEmail(rs.getString("email"));
				s.setGrade(rs.getString("grade"));
				s.setPhone(rs.getInt("phone"));
				s.setSem(rs.getInt("sem"));
				s.setBranch(rs.getString("branch"));
				s.setName(rs.getString("name"));
				list.add(s);
				
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public static int DeleteStudent(int id) {
		int result = 0;
		try {
			//load driver
			Class.forName("com.mysql.jdbc.Driver");
			//connection 
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/sms","root","");
			PreparedStatement pst = con.prepareStatement("DELETE from students where id=" + id);
			result = pst.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public static Student getStudentById (int id) {
		Student student = new Student();
		try {
			//load driver
			Class.forName("com.mysql.jdbc.Driver");
			//connection 
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/sms","root","");
			Statement statement = (Statement) con.createStatement();
			ResultSet rs = (ResultSet) statement.executeQuery("SELECT * from students where id="+id);
			while(rs.next()) {
				student.setId(rs.getInt("id"));
				student.setRollno(rs.getInt("rollno"));
				student.setEmail(rs.getString("email"));
				student.setGrade(rs.getString("grade"));
				student.setPhone(rs.getInt("phone"));
				student.setSem(rs.getInt("sem"));
				student.setBranch(rs.getString("branch"));
				student.setName(rs.getString("name"));
			}

				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return student;
		
	}
	public static int updateStudentById (Student s) {
		int result = 0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//connection 
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/sms","root","");
			PreparedStatement pst = con.prepareStatement("UPDATE students set rollno=?, name=?, branch=?,sem=?,grade=?,email=?,phone=? where id=?");
			pst.setInt(1, s.getRollno());
			pst.setString(2,s.getName());
			pst.setString(3, s.getBranch());
			pst.setInt(4, s.getSem());
			pst.setString(5, s.getGrade());
			pst.setString(6, s.getEmail());
			pst.setInt(7, s.getPhone());
			pst.setInt(8, s.getId());
			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	//search name
	public static List<Student> searchStudent(String name){
		List<Student> list = new ArrayList<Student>();
		try {
			//load driver
			Class.forName("com.mysql.jdbc.Driver");
			//connection 
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/sms","root","");
			Statement statement = (Statement) con.createStatement();
			ResultSet rs = (ResultSet) statement.executeQuery("SELECT * from students WHERE name LIKE '%"+name+"%'");
			while(rs.next()) {
				Student s = new Student();
				s.setId(rs.getInt("id"));
				s.setRollno(rs.getInt("rollno"));
				s.setEmail(rs.getString("email"));
				s.setGrade(rs.getString("grade"));
				s.setPhone(rs.getInt("phone"));
				s.setSem(rs.getInt("sem"));
				s.setBranch(rs.getString("branch"));
				s.setName(rs.getString("name"));
				list.add(s);
				
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
