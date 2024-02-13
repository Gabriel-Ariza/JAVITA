package campus.repository.interfaces;

/* ----  Importaciones de java  ---- */
import java.util.List;


/* ----  Importaciones de archivos  ---- */



public interface GenericCrudModel <T> {
    
    List<T> listar();

    T busqueda(int id);

    void crear(T ejemplo);

    void editar(T ejemplo);

    void eliminar(int id);
}

