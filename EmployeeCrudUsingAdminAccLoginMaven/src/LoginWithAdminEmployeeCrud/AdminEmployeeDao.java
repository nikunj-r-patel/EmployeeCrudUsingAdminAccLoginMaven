package LoginWithAdminEmployeeCrud;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class AdminEmployeeDao {
	public static Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/company", "root", "root");
		} catch (Exception e) {
			System.out.println(e);
		}
		return connection;
	}
	public boolean checkIfTableIsEmpty() {
		String checkTableInSql = "SELECT count(*) FROM employee";
		try (Connection connection = AdminEmployeeDao.getConnection();
				PreparedStatement checkTableQuery = connection.prepareStatement(checkTableInSql);) {
			ResultSet emptyTable = checkTableQuery.executeQuery();
			if (emptyTable.next()) {
				int tableRowCount = emptyTable.getInt(1);
				System.out.println(tableRowCount);
				return tableRowCount == 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public int save(Employee employee) {
		String insertInSql = "INSERT INTO employee(name,email,password,employeeType)values(?,?,?,?);";
		int status = 0;
		try (Connection connection = AdminEmployeeDao.getConnection();
				PreparedStatement insertQuery = connection.prepareStatement(insertInSql);) {
			insertQuery.setString(1, employee.getName());
			insertQuery.setString(2, employee.getEmail());
			insertQuery.setString(3, employee.getPassword());
			insertQuery.setString(4, employee.getEmployeeType());
			status = insertQuery.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	public Employee checkEmployee(String email, String password) {
		String checkDataInSql = "SELECT * FROM employee where email=? and password=?;";
		Employee existingEmployee = new Employee();
		try (Connection connection = AdminEmployeeDao.getConnection();
				PreparedStatement selectOneEmpQuery = connection.prepareStatement(checkDataInSql);) {
			selectOneEmpQuery.setString(1, email);
			selectOneEmpQuery.setString(2, password);
			ResultSet checkedEmpData = selectOneEmpQuery.executeQuery();
			if (checkedEmpData.next()) {
				existingEmployee.setId(checkedEmpData.getInt(1));
				existingEmployee.setName(checkedEmpData.getString(2));
				existingEmployee.setEmail(checkedEmpData.getString(3));
				existingEmployee.setPassword(checkedEmpData.getString(4));
				existingEmployee.setEmployeeType(checkedEmpData.getString(5));
			} else {
				existingEmployee.setId(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return existingEmployee;
	}
	public Employee getOneEmployee(int id) {
		String getDataFromSql = "SELECT * FROM employee where id=? ";
		Employee oneEmployee = new Employee();
		try (Connection connection = AdminEmployeeDao.getConnection();
				PreparedStatement seeOneQuery = connection.prepareStatement(getDataFromSql);) {
			seeOneQuery.setInt(1, id);
			ResultSet oneEmployeeData = seeOneQuery.executeQuery();
			if (oneEmployeeData.next()) {
				oneEmployee.setId(oneEmployeeData.getInt(1));
				oneEmployee.setName(oneEmployeeData.getString(2));
				oneEmployee.setEmail(oneEmployeeData.getString(3));
				oneEmployee.setPassword(oneEmployeeData.getString(4));
				oneEmployee.setEmployeeType(oneEmployeeData.getString(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return oneEmployee;
	}
	public List<Employee> getAllEmployees() {
		String getAllFromSql = "SELECT * FROM employee;";
		List<Employee> listOfAllEmployee = new ArrayList<Employee>();
		try (Connection connection = AdminEmployeeDao.getConnection();
				PreparedStatement seeAllQuery = connection.prepareStatement(getAllFromSql);) {
			ResultSet allEmployeeDetails = seeAllQuery.executeQuery();
			while (allEmployeeDetails.next()) {
				listOfAllEmployee.add(new Employee(allEmployeeDetails.getInt(1), allEmployeeDetails.getString(2),
						allEmployeeDetails.getString(3), allEmployeeDetails.getString(4),
						allEmployeeDetails.getString(5)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listOfAllEmployee;
	}
	public int update(Employee employee) {
		String updateInSql = "UPDATE employee SET name=?,email=?,password=?,employeeType=? where id=?;";
		int status = 0;
		try (Connection connection = AdminEmployeeDao.getConnection();
				PreparedStatement updateQuery = connection.prepareStatement(updateInSql);) {
			updateQuery.setString(1, employee.getName());
			updateQuery.setString(2, employee.getEmail());
			updateQuery.setString(3, employee.getPassword());
			updateQuery.setString(4, employee.getEmployeeType());
			updateQuery.setInt(5, employee.getId());
			status = updateQuery.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	public int delete(int id) {
		String deleteFromSql = "DELETE FROM employee where id=?";
		int status = 0;
		try (Connection connection = AdminEmployeeDao.getConnection();
				PreparedStatement deleteQuery = connection.prepareStatement(deleteFromSql);) {
			deleteQuery.setInt(1, id);
			status = deleteQuery.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}
