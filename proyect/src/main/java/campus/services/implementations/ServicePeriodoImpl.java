package campus.services.implementations;


/* ----  Importaciones de java  ---- */
import java.util.List;
import campus.errors.NullExceptions;
import campus.errors.WrongDataType;

/* ----  Importaciones de archivos  ---- */
import campus.services.GenericCrudServiceString;
import campus.models.*;
import campus.repository.interfaces.*;



public class ServicePeriodoImpl implements GenericCrudServiceString<Periodo>{
    
    private final GenericCrudModelString<Periodo> crudRepoPeriodo;

    public ServicePeriodoImpl(GenericCrudModelString<Periodo> crudRepoPeriodo){
        this.crudRepoPeriodo = crudRepoPeriodo;
    }

    @Override
    public List<Periodo> listar(){
        return this.crudRepoPeriodo.listar();
    }

    @Override
    public Periodo busqueda(String nombre) throws NullExceptions, WrongDataType {
        // Lanza una WrongDataType si nombre contiene algún carácter que no sea una letra
        if (!nombre.matches("[a-zA-Z]+")) {
            throw new WrongDataType("Nombre contiene caracteres inválidos");
        }

        Periodo periodo = this.crudRepoPeriodo.busqueda(nombre);

        if(periodo != null){
            return periodo;
        } else {
            throw new NullExceptions("No se encontró el periodo");
        }   
    }

    @Override
    public void crear(Periodo periodo){
        this.crudRepoPeriodo.crear(periodo);
    }

    @Override
    public void editar(Periodo periodo){
        this.crudRepoPeriodo.editar(periodo);
    }

    @Override
    public void eliminar(String nombre){
        this.crudRepoPeriodo.eliminar(nombre);
    }

}
