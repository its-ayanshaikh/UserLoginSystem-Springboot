package Display.com;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class Display
 */
public class Display extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Display() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		res.setContentType("text/html");
		
		out.println("<html><head><style>");
	    out.println("* { font-family: Arial, sans-serif; margin: 0; padding: 0; box-sizing: border-box; }");
	    out.println("body { background-color: #f0f0f0; display: flex; justify-content: center; align-items: center; height: 100vh; }");
	    out.println(".link-container { background-color: white; border-radius: 10px; padding: 20px; box-shadow: 0 5px 15px rgba(0,0,0,0.1); margin: 20px; width: 300px; text-align: center; }");
	    out.println(".link-container a { text-decoration: none; color: #28a745; font-size: 18px; font-weight: bold; display: block; margin-top: 10px; padding: 10px 20px; border-radius: 5px; background-color: #28a745; color: white; }");
	    out.println(".link-container a:hover { background-color: #218838; }");
	    out.println("</style></head><body>");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "ayan@123");
			
			PreparedStatement pst = con.prepareStatement("select * from signup");
			
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				String lname = rs.getString("firstName");
				String fname = rs.getString("lastName");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				
				String linkUrl = "userDetails?fname="+ fname + "&lname="+ lname+ "&email="+ email+ "&phone="+ phone;
				
				out.println("<div class='link-container'>");
				out.println("<a href='"+ linkUrl +"'>"+ lname + "</a>");
				out.println("</div>");
			}
			
			String linkUrlHome = "home.jsp";
			out.println("<div class='link-container'>");
			out.println("<a href='"+ linkUrlHome +"'> Home </a>");
			out.println("</div>");
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
