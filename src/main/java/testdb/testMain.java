package testdb;

public class testMain {

	public static final String MYSQL_DRIVER = "com.mysql.jdbc.Driver";
	public static final String MYSQL_URL = "jdbc:mysql://localhost/javaTestDB?"
			+ "user=javauser&password=javapass";

	public static void main(String[] args) throws Exception {
		MySQLJava dao = new MySQLJava(MYSQL_DRIVER, MYSQL_URL);
		dao.readData();
	}

}
