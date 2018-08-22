package models;

import java.io.Serializable;

public class Course implements Serializable{
	
	private static final long serialVersionUID=1L;
	
	private String courseName;
	private String courseDescription;
	public Course() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Course(String courseName, String courseDescription) {
		super();
		this.courseName = courseName;
		this.courseDescription = courseDescription;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getCourseDescription() {
		return courseDescription;
	}
	public void setCourseDescription(String courseDescription) {
		this.courseDescription = courseDescription;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Course [courseName=" + courseName + ", courseDescription=" + courseDescription + "]";
	}
	
	
}
