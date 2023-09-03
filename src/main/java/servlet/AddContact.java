package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ContactDao;

@WebServlet("/addcontact")
public class AddContact extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String phone = req.getParameter("phone");
		String email = req.getParameter("email");
		
		boolean res = ContactDao.saveContact(name, phone, email);
		if(res) {
			PrintWriter pw = resp.getWriter();
			pw.write("<h1 style=color:green>DATA SAVED SUCCESSFULLY</h1>");
			RequestDispatcher rd = req.getRequestDispatcher("home.jsp");
			rd.include(req, resp);
		}else {
			PrintWriter pw = resp.getWriter();
			pw.write("<h1 style=color:red>SOMETHING WENT WRONG CONTACT NOT SAVED PLEASE TRY AGAIN</h1>");
			RequestDispatcher rd = req.getRequestDispatcher("home.jsp");
			rd.include(req, resp);
		}
	}
}
