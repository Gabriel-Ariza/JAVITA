package campus.services.implementations;


/* ----  Importaciones de java  ---- */
import campus.errors.*;
import java.util.List;


/* ----  Importaciones de archivos  ---- */
import campus.services.GenericCrudServiceString;
import campus.models.*;
import campus.repository.interfaces.*;



public class ServiceAsignaturaImpl implements GenericCrudServiceString<Asignatura>{

    private final GenericCrudModelString<Asignatura> crudRepoAsignatura;

    public ServiceAsignaturaImpl(GenericCrudModelString<Asignatura> crudRepoAsignatura){
        this.crudRepoAsignatura = crudRepoAsignatura;
    }


    @Override
    public List<Asignatura> listar(){
        return this.crudRepoAsignatura.listar();
    }


    @Override
    public Asignatura busqueda(String nombre) throws NullExceptions, WrongDataType {
        Asignatura asignatura = this.crudRepoAsignatura.busqueda(nombre);
        if(asignatura != null){
            return asignatura;
        } else {
            throw new NullExceptions("No se encontro Asignatura");
        }   
    }


    @Override
    public void crear(Asignatura asignatura){
        this.crudRepoAsignatura.crear(asignatura);
    }


    @Override
    public void editar(Asignatura asignatura){
        this.crudRepoAsignatura.editar(asignatura);
    }

    
    @Override
    public void eliminar(String nombre){
        this.crudRepoAsignatura.eliminar(nombre);
    }


}
