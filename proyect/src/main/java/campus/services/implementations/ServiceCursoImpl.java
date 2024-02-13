package campus.services.implementations;


/* ----  Importaciones de java  ---- */
import java.util.List;
import campus.errors.NullExceptions;
import campus.errors.WrongDataType;
import campus.models.Curso;



/* ----  Importaciones de archivos  ---- */
import campus.services.GenericCrudServiceString;
import campus.repository.interfaces.*;



public class ServiceCursoImpl implements GenericCrudServiceString<Curso> {
    
    private final GenericCrudModelString<Curso> crudRepoCurso;


    public ServiceCursoImpl(GenericCrudModelString<Curso> crudRepoCurso){
        this.crudRepoCurso = crudRepoCurso;
    }


    @Override
    public List<Curso> listar(){
        return this.crudRepoCurso.listar();
    }


    @Override
    public Curso busqueda(String nombre) throws NullExceptions, WrongDataType {
        Curso curso = this.crudRepoCurso.busqueda(nombre);
        if(curso != null){
            return curso;
        } else {
            throw new NullExceptions("No se encontro Curso");
        }   
    }


    @Override
    public void crear(Curso curso){
        this.crudRepoCurso.crear(curso);
    }


    @Override
    public void editar(Curso curso){
        this.crudRepoCurso.editar(curso);
    }


    @Override
    public void eliminar(String nombre){
        this.crudRepoCurso.eliminar(nombre);
    }


}
