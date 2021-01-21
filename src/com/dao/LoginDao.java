package com.dao;
import java.sql.*;
public class LoginDao {

	public boolean check(String username ,String password)
	{
		String sql="select *from login where username=? and password=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/loginmodel","root","root");
			PreparedStatement st=con.prepareStatement(sql);
			
			st.setString(1, username);
			st.setString(2, password);
			
			ResultSet rs=st.executeQuery();
			
			if(rs.next())
			{
				return true;
			}
		}
			catch( Exception e)
			{
				e.printStackTrace();
			}
		
		return false;
		
	}
}
