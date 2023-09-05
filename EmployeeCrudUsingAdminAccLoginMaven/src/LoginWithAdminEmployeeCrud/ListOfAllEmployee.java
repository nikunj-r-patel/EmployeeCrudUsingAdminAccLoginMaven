package LoginWithAdminEmployeeCrud;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//@WebServlet("/ListOfAllEmployee")
//public class ListOfAllEmployee extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//	AdminEmployeeDao adminEmployeeDao = new AdminEmployeeDao();
//	public ListOfAllEmployee() {
//		super();
//	}
//	protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		List<Employee> allEmployees = adminEmployeeDao.getAllEmployees();
//		request.setAttribute("listOfAllEmployee", allEmployees);
//		request.getRequestDispatcher("/WEB-INF/views/showAllEmployeeDetails.jsp").forward(request, response);
//	}
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		doGet(request, response);
//	}
//}
