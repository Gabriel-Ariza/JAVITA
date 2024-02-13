package campus.services.implementations;


/* ----  Importaciones de java  ---- */
import java.util.List;
import campus.errors.NullExceptions;
import campus.errors.WrongDataType;
/* ----  Importaciones de archivos  ---- */
import campus.services.GenericCrudServiceString;
import campus.models.*;
import campus.repository.interfaces.*;



public class ServiceFacultadImpl implements GenericCrudServiceString<Facultad> {
    
    private final GenericCrudModelString<Facultad> crudRepoFacultad;


    public ServiceFacultadImpl(GenericCrudModelString<Facultad> crudRepoFacultad) {
        this.crudRepoFacultad = crudRepoFacultad;
    }


    @Override
    public List<Facultad> listar() {
        return this.crudRepoFacultad.listar();
    }


    @Override
    public Facultad busqueda(String nombre) throws NullExceptions, WrongDataType {
        Facultad facultad = this.crudRepoFacultad.busqueda(nombre);

        if (facultad == null) {
            throw new NullExceptions("No se encontro Facultad");
        }

        return facultad;
    }


    @Override
    public void crear(Facultad facultad) {
        this.crudRepoFacultad.crear(facultad);
    }

    
    @Override
    public void editar(Facultad facultad) {
        this.crudRepoFacultad.editar(facultad);
    }

    
    @Override
    public void eliminar(String nombre) throws WrongDataType {
        if (!nombre.matches("[a-zA-Z]+")) {
            throw new WrongDataType("Nombre contiene caracteres inválidos");
        }

        this.crudRepoFacultad.eliminar(nombre);
    }

}
