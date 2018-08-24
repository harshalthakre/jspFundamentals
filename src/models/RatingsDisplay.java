package models;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class RatingsDisplay extends SimpleTagSupport{
	
	private String course;
	
	public void setCourse(String course) {
		this.course = course;
	}
	
	
	public void doTag() throws JspException, IOException {

		JspWriter out=getJspContext().getOut();
		
		int userCount=0;
		int rating=0;
		int totuserRating=0;
		int totalUsers=0;
		float finalRating=0;
		
		try {
			String query;
			String jamba=course;
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
			String course="spring";
			Statement statement=con.createStatement();
			query="select count(user) as users,rating from ratings where course='"+course+"' group by rating";
			ResultSet rs=statement.executeQuery(query);
			System.out.println(jamba);
			while(rs.next()) {
				 userCount=rs.getInt("users");
				 rating =rs.getInt("rating");
				 totuserRating+=userCount*rating;
				 totalUsers+=userCount;
			}
			finalRating=totuserRating/totalUsers;
			out.println(finalRating);
		}catch(Exception e) {
			e.printStackTrace();
		}
}
}
