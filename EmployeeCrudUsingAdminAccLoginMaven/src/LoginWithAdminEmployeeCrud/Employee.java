package LoginWithAdminEmployeeCrud;
public class Employee{
	private int id;
	private String name;
	private String email;
	private String password;
	private String employeeType;
	Employee(int id, String name, String email, String password, String employeeType) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.employeeType = employeeType;
	}
	Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmployeeType() {
		return employeeType;
	}
	public void setEmployeeType(String employeeType) {
		this.employeeType = employeeType;
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", employeeType=" + employeeType + "]";
	}
	Employee(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
}
