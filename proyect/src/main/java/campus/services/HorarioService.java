package campus.services;


/* ----  Importaciones de java  ---- */
import java.util.List;


/* ----  Importaciones de archivos  ---- */
import campus.models.*;



public interface HorarioService {

    List<Horario> listar();

    Horario busquedaPorAlumno(int id);
    
}
