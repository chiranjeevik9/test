<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@page import="java.sql.Connection"%> 
<%
	String msg="";
	
	String fname=request.getParameter("firstname");
	String lname=request.getParameter("lastname");
	String Fathername=request.getParameter("Fathername");
	String Empid=request.getParameter("Employeeid");
	String country=request.getParameter("country");
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3307/test1","root","root");
	PreparedStatement st = conn.prepareStatement("insert into form2 values(?,?,?,?,?)");
	
		st.setString(1,fname);
		st.setString(2,lname);
		st.setString(3,country);
		st.setString(4,Fathername);
		st.setString(5,Empid);
		 int count=st.executeUpdate(); 
         if(count==1)
         {
         out.print("Record inserted ");
         }   
        			
			%>