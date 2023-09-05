package LoginWithAdminEmployeeCrud;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//@WebServlet("/ShowGeneralEmployee")
//public class ShowGeneralEmployee extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//	AdminEmployeeDao adminEmployeeDao = new AdminEmployeeDao();
//    public ShowGeneralEmployee() {
//        super();
//    }
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpSession session=request.getSession();
//		int id = (int) session.getAttribute("id");
//		Employee generalEmployeeData=adminEmployeeDao.getOneEmployee(id);
//		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/views/showOneEmployeeDetails.jsp");
//		request.setAttribute("generalEmployee", generalEmployeeData);
//		requestDispatcher.forward(request, response);	
//	}
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
//		doGet(request, response);
//	}
//}
