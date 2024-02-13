package campus.services.implementations;


/* ----  Importaciones de java  ---- */
import java.util.List;



/* ----  Importaciones de archivos  ---- */
import campus.errors.NullExceptions;
import campus.errors.WrongDataType;
import campus.services.GenericCrudService;
import campus.models.*;
import campus.repository.interfaces.*;




public class ServiceAlumnoImpl implements GenericCrudService<Alumno> {
    
    private final GenericCrudModel<Alumno> crudRepoAlumno;


    public ServiceAlumnoImpl(GenericCrudModel<Alumno> crudRepoAlumno) {
        this.crudRepoAlumno = crudRepoAlumno;
    }


    @Override
    public List<Alumno> listar() {
        return this.crudRepoAlumno.listar();
    }


    @Override
    public Alumno busqueda(int id) throws NullExceptions, WrongDataType {
        Alumno alumno = this.crudRepoAlumno.busqueda(id);

        if (alumno == null) {
            throw new NullExceptions("No se encontro Alumno");
        }

        return alumno;
    }


    @Override
    public void crear(Alumno alumno) {
        this.crudRepoAlumno.crear(alumno);
    }


    @Override
    public void editar(Alumno alumno) {
        this.crudRepoAlumno.editar(alumno);
    }

    
    @Override
    public void eliminar(int id) {
        this.crudRepoAlumno.eliminar(id);
    }


}
