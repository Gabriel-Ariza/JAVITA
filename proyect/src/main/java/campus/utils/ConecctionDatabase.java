package campus.utils;


/* ----  Importaciones de java  ---- */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/* ----  Importaciones de archivos  ---- */
import campus.models.Ciudad;
import campus.utils.ConecctionDatabase;



public class ConecctionDatabase {
    private static String url = "jdbc:mysql://localhost:3306/java";
    private static String username = "root";
    private static String password = "joseplata153";
    private static Connection connection;


    public static Connection connect() {
        try {
            Connection connection = DriverManager.getConnection(url, username, password);
            System.out.println("\n---> Conexion a la base de datos exitosa\n\n");
            return connection;
        } catch (SQLException e) {
            throw new IllegalStateException("\nError, no se pudo conectar a la base de datos\n", e);
        }
    }



    public static void cerrarRecursos(Connection conexion, PreparedStatement statement, ResultSet resultado) {
        try {
            if (resultado != null) {
                resultado.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (conexion != null) {
                conexion.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }



    public static Ciudad buscarCiudadPorNombre(String nombre) {
        Connection conexion = null;
        PreparedStatement statement = null;
        ResultSet resultado = null;
        Ciudad ciudadEncontrada = null;

        try {
            conexion = connect();
            String query = "SELECT * FROM ciudades WHERE nombre = ?";
            statement = conexion.prepareStatement(query);
            statement.setString(1, nombre);
            resultado = statement.executeQuery();

            if (resultado.next()) {
                ciudadEncontrada = new Ciudad(resultado.getInt("id"), resultado.getString("nombre"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            cerrarRecursos(conexion, statement, resultado);
        }

        return ciudadEncontrada;
    }



    /* TEST! SIN IMPLEMENTAR LA INSTANCIA Connection */
    public static Connection getConnection() throws SQLException {
        if (connection == null) {
            connection = DriverManager.getConnection(url, username, password);
        }
        return connection;
    }
}
