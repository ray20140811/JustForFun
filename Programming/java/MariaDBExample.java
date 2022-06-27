import java.sql.*;

public class MariaDBExample
{
    public static void main(String[] args)
    {
	try
	{
	    String myDriver = "org.mariadb.jdbc.Driver";
	    //String myUrl = "jdbc:mariadb://12.34.56.789/mydb";
	    String myUrl = "jdbc:mariadb://localhost/mydb";

	    Class.forName("org.mariadb.jdbc.Driver");
	    Connection conn = DriverManager.getConnection(myUrl, "root", "justforfun");

	    String query = "SELECT * FROM users";

	    Statement st = conn.createStatement();

	    ResultSet rs = st.executeQuery(query);
	    while(rs.next())
	    {
		int id = rs.getInt("id");
		String firstName = rs.getString("first_name");
		String lastName = rs.getString("last_name");
		Date dateCreated = rs.getDate("date_created");
		boolean isAdmin = rs.getBoolean("is_admin");
		int numPoints = rs.getInt("num_points");

		System.out.format("%s, %s, %s, %s, %s, %s\n", id, firstName, lastName, dateCreated, isAdmin, numPoints);
	    }
	    st.close();
	}
	catch(Exception e)
	{
	    System.err.println("Got an exception! ");
	    System.err.println(e.getMessage());
	}
    }
}
