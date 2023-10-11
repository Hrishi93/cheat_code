package students.log;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        // DB -- JDBC URL, User and Password
        String jdbcUrl = "jdbc:mysql://localhost:3306/collegedb";
        String dbUser = "root";
        String dbPassword = "Sonu@1993";
        
        try {
            Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
            String sql = "SELECT * FROM students WHERE email = ? AND password = ?";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            
            ResultSet resultSet = preparedStatement.executeQuery();
            
            if (resultSet.next()) {
                // Successful login, redirect to a welcome page or dashboard
                response.sendRedirect("welcome.jsp");
            } else {
                // Invalid credentials, display an error message
                response.sendRedirect("login.jsp?error=1");
            }
            
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}