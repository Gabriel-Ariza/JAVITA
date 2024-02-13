package campus.repository.interfaces;


/* ----  Importaciones de java  ---- */
import java.util.List;


/* ----  Importaciones de archivos  ---- */
import campus.models.*;



public interface HorarioModel {
    List<Horario> listar();

    Horario busquedaPorAlumno(int id);
    
    
}
