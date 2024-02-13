package campus.services.implementations;


/* ----  Importaciones de java  ---- */
import java.util.List;
import campus.errors.NullExceptions;
import campus.errors.WrongDataType;
/* ----  Importaciones de archivos  ---- */
import campus.services.GenericCrudService;
import campus.models.*;
import campus.repository.interfaces.*;



public class ServiceHorarioImpl implements GenericCrudService<Horario> {
    
    private final GenericCrudModelString<Horario> crudRepoHorario;


    public ServiceHorarioImpl(GenericCrudModelString<Horario> crudRepoHorario) {
        this.crudRepoHorario = crudRepoHorario;
    }


    @Override
    public List<Horario> listar() {
        return this.crudRepoHorario.listar();
    }


    @Override
    public Horario busqueda(int id) throws NullExceptions, WrongDataType {
        Horario horario = this.crudRepoHorario.busqueda(Integer.toString(id));

        if (horario == null) {
            throw new NullExceptions("No se encontro Horario");
        }

        return horario;
    }


    @Override
    public void crear(Horario horario) {
        this.crudRepoHorario.crear(horario);
    }


    @Override
    public void editar(Horario horario) {
        this.crudRepoHorario.editar(horario);
    }

    
    @Override
    public void eliminar(int id) {
        this.crudRepoHorario.eliminar(Integer.toString(id));
    }


}
