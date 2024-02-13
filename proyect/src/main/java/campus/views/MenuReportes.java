package campus.views;


/* ----  Importaciones de java  ---- */
import java.util.Scanner;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.CallableStatement;
import java.sql.ResultSetMetaData;

/* ----  Importaciones de archivos  ---- */
import campus.utils.ConecctionDatabase;




public class MenuReportes implements CrudMenu{
    
    @Override
    public void crud(Scanner scanner) {
        int option;

        do {
            System.out.println("\n\n   "+ "-".repeat(40));
            System.out.println("     \tGenerador de reportes");
            System.out.println("   "+"-".repeat(40));
            System.out.println("     1. Listar los estudiantes matriculados por programa");
            System.out.println("     2. Calcular el costo del semestre de un estudiante");
            System.out.println("     3. Calcular los ingreso de la universidad por semestre");
            System.out.println("     4. Imprimir el horario de un estudiante.");
            System.out.println("     5. Imprimir numero de matriculados por programa\n");
            System.out.println("     6. Menu principal");
            System.out.println("   "+"-".repeat(40));

            System.out.print("\n--> Ingrese una opción: ");
            option = scanner.nextInt();

            switch (option) {
                case 1:
                    listarEstudiantesMatriculados(scanner);
                    break;
                case 2:
                    calcularCostoSemestreEstudiante(scanner);
                    break;
                case 3:
                    calcularIngresosUniversidad(scanner);
                    break;
                case 4:
                    imprimirHorarioEstudiante(scanner);
                    break;
                case 5:
                    imprimirMatriculadosPorPrograma(scanner);
                    break;
                case 6:
                    System.out.println("\n ---  Volviendo al menú principal --- \n\n");
                    break;
                default:
                    System.out.println("\nOpcion no valida. Por favor, elige una opcion entre 0 y 6.\n\n");
                    break;
            }
        } while (option != 5);

    }


    @Override
    public String getMenuName() {
        return "Modulo reportes";
    }



/*
    ?--------------------  METODO PARA LISTAR LOS ESTUDIANTES MATRICULADOS  --------------------
*/
    public static void listarEstudiantesMatriculados(Scanner scanner) {
        Connection conexion = null;
        PreparedStatement statement = null;
        ResultSet resultado = null;

        try {
            conexion = ConecctionDatabase.connect();
            String query = "SELECT * FROM EstudiantesPorPrograma";
            statement = conexion.prepareStatement(query);
            resultado = statement.executeQuery();

            while (resultado.next()) {
                System.out.println("Estudiante: " + resultado.getString("Estudiante") + ", Programa: " + resultado.getString("Nombre del Programa"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConecctionDatabase.cerrarRecursos(conexion, statement, resultado);
        }
    }



/*
    ?--------------------  METODO PARA LISTAR LOS ESTUDIANTES MATRICULADOS  --------------------
*/
    public static void calcularCostoSemestreEstudiante(Scanner scanner) {
        Connection conexion = null;
        CallableStatement statement = null;

        try {
            System.out.println("Ingrese el ID del estudiante:");
            int idEstudiante = scanner.nextInt();
            System.out.println("Ingrese el ID del semestre:");
            int idSemestre = scanner.nextInt();

            conexion = ConecctionDatabase.connect();
            String query = "{CALL CalcularCostoSemestre(?, ?)}";
            statement = conexion.prepareCall(query);
            statement.setInt(1, idEstudiante);
            statement.setInt(2, idSemestre);

            boolean tieneResultados = statement.execute();

            while (tieneResultados) {
                ResultSet resultado = statement.getResultSet();
                ResultSetMetaData metaData = resultado.getMetaData();
                int columnCount = metaData.getColumnCount();

                while (resultado.next()) {
                    if (columnCount == 3) {
                        System.out.println("Nombre del Alumno: " + resultado.getString("Nombre del Alumno") + ", Codigo Asignatura: " + resultado.getString("Codigo Asignatura") + ", Precio Matricula: " + resultado.getDouble("Precio Matricula"));
                    } else if (columnCount == 2) {
                        System.out.println("Nombre del Alumno: " + resultado.getString("Nombre del Alumno") + ", Costo Total del Semestre: " + resultado.getDouble("Costo Total del Semestre"));
                    }
                }
                tieneResultados = statement.getMoreResults();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConecctionDatabase.cerrarRecursos(conexion, statement, null);
        }
    }



/*
    ?--------------------  METODO PARA LISTAR LOS ESTUDIANTES MATRICULADOS  --------------------
*/
    public static void calcularIngresosUniversidad(Scanner scanner) {
        Connection conexion = null;
        CallableStatement statement = null;
        ResultSet resultado = null;

        try {
            System.out.println("Ingrese el ID del periodo:");
            int idPeriodo = scanner.nextInt();

            conexion = ConecctionDatabase.connect();
            String query = "{CALL CalculateUniversityIncome(?)}";
            statement = conexion.prepareCall(query);
            statement.setInt(1, idPeriodo);
            resultado = statement.executeQuery();

            while (resultado.next()) {
                System.out.printf("Ingresos del periodo %d: %.0f\n", resultado.getInt("id_periodo"), resultado.getDouble("Ingresos"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConecctionDatabase.cerrarRecursos(conexion, statement, resultado);
        }
    }



/*
    ?--------------------  METODO PARA LISTAR LOS ESTUDIANTES MATRICULADOS  --------------------
*/
    public static void imprimirHorarioEstudiante(Scanner scanner) {
        Connection conexion = null;
        CallableStatement statement = null;
        ResultSet resultado = null;

        try {
            System.out.println("Ingrese el ID del estudiante:");
            int idEstudiante = scanner.nextInt();

            conexion = ConecctionDatabase.connect();
            String query = "{CALL GetHorarioEstudiante(?)}";
            statement = conexion.prepareCall(query);
            statement.setInt(1, idEstudiante);
            resultado = statement.executeQuery();

            while (resultado.next()) {
                System.out.println("Estudiante: " + resultado.getString("Estudiante") + ", Asignatura: " + resultado.getString("Asignatura") + ", Horario: " + resultado.getString("Horario"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConecctionDatabase.cerrarRecursos(conexion, statement, resultado);
        }
    }

/*
    ?--------------------  METODO PARA LISTAR LOS ESTUDIANTES MATRICULADOS  --------------------
*/
    public static void imprimirMatriculadosPorPrograma(Scanner scanner) {
        Connection conexion = null;
        PreparedStatement statement = null;
        ResultSet resultado = null;

        try {
            conexion = ConecctionDatabase.connect();
            String query = "SELECT * FROM matriculados_por_programa";
            statement = conexion.prepareStatement(query);
            resultado = statement.executeQuery();

            while (resultado.next()) {
                System.out.println("Programa: " + resultado.getString("Nombre del Programa") + ", Número de Matriculados: " + resultado.getInt("Número de Matriculados"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConecctionDatabase.cerrarRecursos(conexion, statement, resultado);
        }
    }

    
}
