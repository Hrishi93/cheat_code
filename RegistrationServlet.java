package students.reg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class RegistrationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html");
    	PrintWriter out=response.getWriter();
    	
    	
    	// Retrieve data from the registration form
    	
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        int age = Integer.parseInt(request.getParameter("age"));
        int marks = Integer.parseInt(request.getParameter("marks"));
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        //DB -- JDBC URL, User and Password
        
        String jdbcUrl = "jdbc:mysql://localhost:3306/collegedb";
        String dbUser = "root";
        String dbPassword = "Sonu@1993";

       
        try {
            Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
            String sql = "INSERT INTO students (first_name, last_name, age, marks, address, email, password) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, firstName);
            preparedStatement.setString(2, lastName);
            preparedStatement.setInt(3, age);
            preparedStatement.setInt(4, marks);
            preparedStatement.setString(5, address);
            preparedStatement.setString(6, email);
            preparedStatement.setString(7, password);
            

            int save=preparedStatement.executeUpdate();
            
            conn.close();
            
            if(save==1) {
            	
            	request.setAttribute("firstname", firstName);
                request.setAttribute("lastname", lastName);
                request.setAttribute("age", age);
                request.setAttribute("marks", marks);
                request.setAttribute("address", address);
                request.setAttribute("email", email);
            	// Forward to the success.jsp page
            	request.getRequestDispatcher("success.jsp").forward(request, response);
            	//response.sendRedirect("success.jsp");
            }else {
            	out.print("<html><body><script>alert('Failed')</script></body></html>");
            	//response.sendRedirect("login.html");
            }
            
        	}catch (Exception e) {
                e.printStackTrace();
            }
            //response.sendRedirect("client.html");  
    }
}
