package models;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Courses implements Serializable{
	
	public List getAllCourse() {
		ArrayList<Course> list=new ArrayList<Course>();
		
		try {
			String query;
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
			
			Statement statement=con.createStatement();
			query="select * from course";
			ResultSet rs=statement.executeQuery(query);
			
			while(rs.next()) {
				Course course=new Course();
				
				course.setCourseName(rs.getString("coursename"));
				course.setCourseDescription(rs.getString("courseDescription"));
				
				list.add(course);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
