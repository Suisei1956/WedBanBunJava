package models;

import java.sql.Connection;
import java.sql.DriverManager;

public class testconnect {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
   	 try{
		 Class.forName("com.mysql.cj.jdbc.Driver");	    		
		 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bun","root", "");	
		 if(conn!= null)
			 System.out.print("ok");
	 }catch(ClassNotFoundException e){
		 e.printStackTrace();
	 }catch(Exception e){
		 e.printStackTrace();
	 }	
	}

}
