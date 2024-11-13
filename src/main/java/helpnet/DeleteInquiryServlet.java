package helpnet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteInquiryServlet")
public class DeleteInquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("inqNo");
		boolean isTrue;
		
		isTrue = inquiryDBUtil.deleteinquiry(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("inquiry.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<inquiry> inqDetails = inquiryDBUtil.getinquiryDetails(id);
			request.setAttribute("iqnDetails", inqDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("inquiry.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
