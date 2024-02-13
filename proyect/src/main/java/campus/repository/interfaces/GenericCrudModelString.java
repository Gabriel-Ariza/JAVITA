package campus.repository.interfaces;

/* ----  Importaciones de java  ---- */
import java.util.List;


/* ----  Importaciones de archivos  ---- */



public interface GenericCrudModelString <T> {

    List<T> listar();

    T busqueda(String T);

    void crear(T ejemplo);

    void editar(T ejemplo);

    void eliminar(String T);
}
