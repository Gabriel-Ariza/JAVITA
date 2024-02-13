package campus.services;


/* ----  Importaciones de java  ---- */
import java.util.List;


/* ----  Importaciones de archivos  ---- */
import campus.errors.NullExceptions;
import campus.errors.WrongDataType;



public interface GenericCrudServiceString <T>{
    List<T> listar();

    T busqueda(String nombre) throws NullExceptions, WrongDataType;

    void crear(T ejemplo);

    void editar(T ejemplo);

    void eliminar(String nombre) throws WrongDataType;
}
