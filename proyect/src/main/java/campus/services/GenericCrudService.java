package campus.services;


/* ----  Importaciones de java  ---- */
import java.util.List;


/* ----  Importaciones de archivos  ---- */
import campus.errors.WrongDataType;
import campus.errors.NullExceptions;



public interface GenericCrudService<T> {
    List<T> listar();

    T busqueda(int id) throws NullExceptions, WrongDataType;

    void crear(T ejemplo);

    void editar(T ejemplo);

    void eliminar(int id);

    

}