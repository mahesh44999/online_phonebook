package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/editcontact")
public class EditContact extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		String sql="SELECT *FROM phonebook WHERE id="+id;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phonebook","root","root");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(sql);
			rs.next();
			
			PrintWriter pw=resp.getWriter();
			pw.write("<html><body>");
			pw.write("<form action=updatecontact>");
			pw.write("NAME : <input type=text name=name value='"+rs.getString(1)+"'><br>");
			pw.write("PHONE : <input type=text name=phone value"+rs.getString(2)+"><br>");
			pw.write(" <input type=submit  value=update>");
			pw.write("</form></body></html>");
			con.close();
	
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
