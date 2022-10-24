package models;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class BunContext {	 
	    public Connection getConnection(){
	    	 try{
	    		 Class.forName("com.mysql.cj.jdbc.Driver");	    		
	    		 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bun","root", "");	
	    		 if(conn!= null)
	    			 System.out.print("ok");
		    	 return conn;
	    	 }catch(ClassNotFoundException e){
	    		 e.printStackTrace();
	    		 return null;
	    	 }catch(Exception e){
	    		 e.printStackTrace();
	    		 return null;
	    	 }	    	 	    		    	 
	    }	 	
}
