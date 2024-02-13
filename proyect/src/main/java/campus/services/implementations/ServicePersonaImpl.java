package campus.services.implementations;


/* ----  Importaciones de java  ---- */
import java.util.List;
import campus.errors.NullExceptions;
import campus.errors.WrongDataType;
import campus.services.GenericCrudService;
/* ----  Importaciones de archivos  ---- */


import campus.models.*;
import campus.repository.interfaces.*;



public class ServicePersonaImpl implements GenericCrudService<Persona> {
    
    private final GenericCrudModel<Persona> crudRepoPersona;


    public ServicePersonaImpl(GenericCrudModel<Persona> crudRepoPersona) {
        this.crudRepoPersona = crudRepoPersona;
    }


    @Override
    public List<Persona> listar() {
        return this.crudRepoPersona.listar();
    }


    @Override
    public Persona busqueda(int id) throws NullExceptions, WrongDataType {
        Persona persona = this.crudRepoPersona.busqueda(id);

        if (persona == null) {
            throw new NullExceptions("No se encontro Persona");
        }

        return persona;
    }


    @Override
    public void crear(Persona persona) {
        this.crudRepoPersona.crear(persona);
    }


    @Override
    public void editar(Persona persona) {
        this.crudRepoPersona.editar(persona);
    }

    
    @Override
    public void eliminar(int id) {
        this.crudRepoPersona.eliminar(id);
    }

}
