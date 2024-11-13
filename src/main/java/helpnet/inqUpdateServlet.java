package helpnet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/inqUpdateServlet")
public class inqUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String inqNo = request.getParameter("inqNo");
		 String name = request.getParameter("name");
		 String email = request.getParameter("email");
		 String message = request.getParameter("message");
		
		 boolean isTrue;
		 
		 isTrue = inquiryDBUtil.updateinquiry(inqNo, name, email, message);
		 
		 if(isTrue == true) {
			 
			 List<inquiry> inqDetails = inquiryDBUtil.getinquiryDetails(inqNo);
			 request.setAttribute("inqDetails", inqDetails);
			 
			 RequestDispatcher dis = request.getRequestDispatcher("userinquiry.jsp");
			 dis.forward(request, response);
		 }
		 else {
			 List<inquiry> inqDetails = inquiryDBUtil.getinquiryDetails(inqNo);
			 request.setAttribute("inqDetails", inqDetails);
			 
			 
			 RequestDispatcher dis = request.getRequestDispatcher("userinquiry.jsp");
			 dis.forward(request, response);
		 }
	}

}
