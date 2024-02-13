package campus.views;


/* ----  Importaciones de java  ---- */
import java.util.Scanner;
import java.util.Date;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



/* ----  Importaciones de archivos  ---- */
import campus.utils.ConecctionDatabase;




public class MenuAlumno implements CrudMenu {
    
    @Override
    public void crud(Scanner scanner) {
        int option;

        do {
            System.out.println("\n\n   "+ "-".repeat(30));
            System.out.println("     \tGestion Alumnos");
            System.out.println("   "+"-".repeat(30));
            System.out.println("     1. Agregar alumno");
            System.out.println("     2. Eliminar alumno");
            System.out.println("     3. Actualizar alumno");
            System.out.println("     4. listar alumnos\n");
            System.out.println("     5. Menu principal");
            System.out.println("   "+"-".repeat(30));

            System.out.print("\n--> Ingrese una opción: ");
            option = scanner.nextInt();

            switch (option) {
                case 1:
                    agregarAlumno(scanner);
                    break;
                case 2:
                    eliminarAlumno(scanner);
                    break;
                case 3:
                    editarAlumno(scanner);
                    break;
                case 4:
                    listarAlumnos();
                    break;
                case 5:
                    System.out.println("\n ---  Volviendo al menú principal --- \n\n");
                    break;
                default:
                    System.out.println("\nOpcion no valida. Por favor, elige una opcion entre 0 y 5.\n\n");
                    break;
            }
        } while (option != 5);

    }


    @Override
    public String getMenuName() {
        return "Modulo alumnos";
    }


/*
    ?--------------------  METODO PARA ELIMINAR A UN ALUMNO  --------------------
*/
public static void eliminarAlumno(Scanner scanner) {
    System.out.print("Ingrese el documento del alumno que desea eliminar: ");
    String documento = scanner.next();

    Connection conexion = null;
    PreparedStatement statement = null;

    try {
        conexion = ConecctionDatabase.connect();
        String query = "DELETE FROM persona WHERE documento = ?";
        statement = conexion.prepareStatement(query);
        statement.setString(1, documento);
        int filasAfectadas = statement.executeUpdate();

        if (filasAfectadas > 0) {
            System.out.println("\n\tEl alumno ha sido eliminado exitosamente\n\n");
        } else {
            System.out.println("\n---> No se encontró un alumno con el documento proporcionado\n\n");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        ConecctionDatabase.cerrarRecursos(conexion, statement, null);
    }
}



/*
    ?--------------------  METODO PARA EDITAR A UN ALUMNO  --------------------
*/
    public static void editarAlumno(Scanner scanner) {
        System.out.print("Ingrese el documento del alumno que desea editar: ");
        String documentoOriginal = scanner.next();

        Connection conexion = null;
        PreparedStatement statement = null;
        ResultSet resultado = null;

        try {
            conexion = ConecctionDatabase.connect();
            String query = "SELECT * FROM vista_estudiantes WHERE documento = ?";
            statement = conexion.prepareStatement(query);
            statement.setString(1, documentoOriginal);
            resultado = statement.executeQuery();

            if (resultado.next()) {
                System.out.println("Seleccione el campo que desea editar:");
                System.out.println("1. Nombre");
                System.out.println("2. Apellido");
                System.out.println("3. Documento");
                System.out.println("4. Sexo");
                System.out.println("5. Fecha de Nacimiento");
                System.out.println("6. Ciudad");
                System.out.println("7. Barrio");
                System.out.println("8. Calle");
                System.out.println("9. Número de Casa");

                int opcion = scanner.nextInt();
                System.out.print("Ingrese el nuevo valor: ");
                String nuevoValor = scanner.next();

                String campoParaEditar;
                switch (opcion) {
                    case 1:
                        campoParaEditar = "nombres";
                        break;
                    case 2:
                        campoParaEditar = "apellidos";
                    break;
                    case 3:
                        campoParaEditar = "documento";
                        break;
                    case 4:
                        campoParaEditar = "sexo";
                        break;
                    case 5:
                        campoParaEditar = "fecha_nacimiento";
                        break;
                    case 6:
                        campoParaEditar = "ciudad";
                        break;
                    case 7:
                        campoParaEditar = "barrio";
                        break;
                    case 8:
                        campoParaEditar = "calle";
                        break;
                    case 9:
                        campoParaEditar = "numero_casa";
                        break;
                    default:
                        System.out.println("Opción no válida.");
                        return;
                }

                PreparedStatement subStatement = null;
                ResultSet subResult = null;
                int idToUpdate = -1;
                
                if(campoParaEditar.equals("numero_casa") || campoParaEditar.equals("barrio") || campoParaEditar.equals("calle")) {
                    String subquery = "SELECT id_direccion FROM persona WHERE documento = ?";
                    subStatement = conexion.prepareStatement(subquery);
                    subStatement.setString(1, documentoOriginal);
                    subResult = subStatement.executeQuery();
                    if (subResult.next()) {
                        idToUpdate = subResult.getInt("id_direccion");
                    }
                    query = "UPDATE direccion SET " + campoParaEditar + " = ? WHERE id_direccion = ?";
                
                } else if(campoParaEditar.equals("ciudad")){
                    String subquery = "SELECT id_ciudad FROM persona WHERE documento = ?";
                    subStatement = conexion.prepareStatement(subquery);
                    subStatement.setString(1, documentoOriginal);
                    subResult = subStatement.executeQuery();
                    if (subResult.next()) {
                        idToUpdate = subResult.getInt("id_ciudad");
                    }
                    query = "UPDATE ciudad SET nombre = ? WHERE id_ciudad = ?";
                } 
                else {
                    query = "UPDATE persona SET " + campoParaEditar + " = ? WHERE documento = ?";
                }
                
                statement = conexion.prepareStatement(query);
                statement.setString(1, nuevoValor);
                if (idToUpdate != -1) {
                    statement.setInt(2, idToUpdate);
                } else {
                    statement.setString(2, documentoOriginal);
                }
                int filasAfectadas = statement.executeUpdate();

                if (filasAfectadas > 0) {
                    System.out.println("\n\tEl alumno ha sido actualizado exitosamente\n\n");
                    // Si el documento fue cambiado, usar el nuevo valor para buscar al alumno
                    String documentoParaBuscar = campoParaEditar.equals("documento") ? nuevoValor : documentoOriginal;
                
                    query = "SELECT * FROM vista_estudiantes WHERE documento = ?";
                    statement = conexion.prepareStatement(query);
                    statement.setString(1, documentoParaBuscar);
                    resultado = statement.executeQuery();
                
                    // Imprimir los nombres de las columnas
                    System.out.println("+---------------------+-----------------+------------+---------------------+-----------------+-----------------+-----------------+-----------------+");
                    System.out.printf("| %-20s | %-15s | %-10s | %-20s | %-15s | %-15s | %-15s | %-15s |%n", "Estudiante", "Documento", "Sexo", "Fecha de Nacimiento", "Ciudad", "Barrio", "Calle", "Número de Casa");
                    System.out.println("+---------------------+-----------------+------------+---------------------+-----------------+-----------------+-----------------+-----------------+");
                
                    while (resultado.next()) {
                        String estudiante = resultado.getString("Estudiante");
                        String documento = resultado.getString("documento");
                        String sexo = resultado.getString("sexo");
                        Date fecha_nacimiento = resultado.getDate("fecha_nacimiento");
                        String ciudad = resultado.getString("Ciudad");
                        String barrio = resultado.getString("barrio");
                        String calle = resultado.getString("calle");
                        String numero_casa = resultado.getString("numero_casa");
                
                        // Imprimir los datos de cada fila
                        System.out.printf("| %-20s | %-15s | %-10s | %-20s | %-15s | %-15s | %-15s | %-15s |%n", estudiante, documento, sexo, fecha_nacimiento, ciudad, barrio, calle, numero_casa);
                        System.out.println("+---------------------+-----------------+------------+---------------------+-----------------+-----------------+-----------------+-----------------+");
                    }
                } else {
                    System.out.println("\n---> Ocurrió un error al actualizar el alumno\n\n");
                }
            } else {
                System.out.println("\n---> No se encontró un alumno con el documento proporcionado\n\n");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConecctionDatabase.cerrarRecursos(conexion, statement, resultado);
        }
    }


/*
    ?--------------------  METODO PARA AGREGAR A UN ALUMNO  --------------------
*/
    public static void agregarAlumno(Scanner scanner) {
        System.out.print("Ingrese el tipo de documento del estudiante (CC, TI, CE): ");
        String tipoDocumento = scanner.next();
        scanner.nextLine();
        if (!tipoDocumento.equals("CC") && !tipoDocumento.equals("TI") && !tipoDocumento.equals("CE")) {
            System.out.println("El tipo de documento no es válido. Por favor, ingrese 'CC', 'TI' o 'CE'.");
            return;
        }
        System.out.print("Ingrese el documento del estudiante: ");
        String documento = scanner.next();
        scanner.nextLine();
        System.out.print("Ingrese los nombres del estudiante: ");
        String[] nombreInput = scanner.nextLine().split(" ");
        String nombre1 = nombreInput[0];
        String nombre2 = nombreInput.length > 1 ? nombreInput[1] : "";
        System.out.print("Ingrese los apellidos del estudiante: ");
        String[] apellidoInput = scanner.nextLine().split(" ");
        String apellido1 = apellidoInput[0];
        String apellido2 = apellidoInput.length > 1 ? apellidoInput[1] : "";
        System.out.print("Ingrese el ID de la ciudad del estudiante: ");
        String idCiudad = scanner.next();
        scanner.nextLine(); 
        System.out.print("Ingrese el ID de la dirección del estudiante: ");
        String idDireccion = scanner.next();
        scanner.nextLine(); 
        System.out.print("Ingrese el teléfono del estudiante: ");
        String telefono = scanner.next();
        scanner.nextLine(); 
        System.out.print("Ingrese la fecha de nacimiento del estudiante (formato YYYY-MM-DD): ");
        String fechaNacimiento = scanner.next();
        scanner.nextLine(); 
        System.out.print("Ingrese el sexo del estudiante (masculino, femenino, no definido): ");
        String sexo = scanner.next();
        scanner.nextLine(); 

        String nombres = nombre2.isEmpty() ? nombre1 : nombre1 + " " + nombre2;
        String apellidos = apellido2.isEmpty() ? apellido1 : apellido1 + " " + apellido2;

        Connection conexion = null;
        ResultSet generatedKeys = null;
        PreparedStatement preparedStatement = null;
        

        try {
            conexion = ConecctionDatabase.connect();
            String query = "INSERT INTO persona (tipo_documento, documento, nombres, apellidos, id_ciudad, id_direccion, telefono, fecha_nacimiento, sexo) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = conexion.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, tipoDocumento);
            preparedStatement.setString(2, documento);
            preparedStatement.setString(3, nombres);
            preparedStatement.setString(4, apellidos);
            preparedStatement.setString(5, idCiudad);
            preparedStatement.setString(6, idDireccion);
            preparedStatement.setString(7, telefono);
            preparedStatement.setString(8, fechaNacimiento);
            preparedStatement.setString(9, sexo);
            int filasAfectadas = preparedStatement.executeUpdate();

            if (filasAfectadas > 0) {
                generatedKeys = preparedStatement.getGeneratedKeys();
                if (generatedKeys.next()) {
                    int idPersona = generatedKeys.getInt(1);
                    MenuPrograma.listarProgramas();
                    System.out.print("Ingrese el ID del programa que el estudiante está inscribiendo: ");
                    int idPrograma = scanner.nextInt();
                    query = "INSERT INTO alumno (id_persona, id_programa) VALUES (?, ?)";
                    preparedStatement = conexion.prepareStatement(query);
                    preparedStatement.setInt(1, idPersona);
                    preparedStatement.setInt(2, idPrograma);
                    filasAfectadas = preparedStatement.executeUpdate();
                    if (filasAfectadas > 0) {
                        System.out.println("\n\tEl estudiante ha sido agregado exitosamente\n\n");
                    } else {
                        System.out.println("\n---> Ocurrió un error al agregar el estudiante al programa\n\n");
                    }
                }
            } else {
                System.out.println("\n---> Ocurrió un error al agregar el estudiante\n\n");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (preparedStatement != null) {
                ConecctionDatabase.cerrarRecursos(conexion, preparedStatement, generatedKeys);
            }
        }
    }



/*
    ?--------------------  METODO PARA LISTAR A UN ALUMNO  --------------------
*/
    public static void listarAlumnos() {
    Connection conexion = null;
    PreparedStatement statement = null;
    ResultSet resultado = null;

        try {
            conexion = ConecctionDatabase.connect();
            String query = "SELECT * FROM vista_estudiantes"; // Reemplaza 'vista_estudiantes' con el nombre real de tu vista
            statement = conexion.prepareStatement(query);
            resultado = statement.executeQuery();


            System.out.println("+---------------------+-----------------+------------+---------------------+-----------------+-----------------+-----------------+-----------------+");
            System.out.printf("| %-20s | %-15s | %-10s | %-20s | %-15s | %-15s | %-15s | %-15s |%n", "Estudiante", "Documento", "Sexo", "Fecha de Nacimiento", "Ciudad", "Barrio", "Calle", "Número de Casa");
            System.out.println("\n");
            System.out.println("+---------------------+-----------------+------------+---------------------+-----------------+-----------------+-----------------+-----------------+");

            while (resultado.next()) {
                String estudiante = resultado.getString("Estudiante");
                String documento = resultado.getString("documento");
                String sexo = resultado.getString("sexo");
                Date fecha_nacimiento = resultado.getDate("fecha_nacimiento");
                String ciudad = resultado.getString("Ciudad");
                String barrio = resultado.getString("barrio");
                String calle = resultado.getString("calle");
                String numero_casa = resultado.getString("numero_casa");


                System.out.printf("| %-20s | %-15s | %-10s | %-20s | %-15s | %-15s | %-15s | %-15s |%n", estudiante, documento, sexo, fecha_nacimiento, ciudad, barrio, calle, numero_casa);
                System.out.println("+---------------------+-----------------+------------+---------------------+-----------------+-----------------+-----------------+-----------------+");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConecctionDatabase.cerrarRecursos(conexion, statement, resultado);
        }
    }

}
