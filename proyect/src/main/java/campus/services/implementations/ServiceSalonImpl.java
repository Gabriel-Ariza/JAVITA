package campus.services.implementations;


/* ----  Importaciones de java  ---- */
import java.util.List;
import campus.errors.NullExceptions;
import campus.errors.WrongDataType;
/* ----  Importaciones de archivos  ---- */
import campus.services.GenericCrudServiceString;
import campus.models.*;
import campus.repository.interfaces.*;



public class ServiceSalonImpl implements GenericCrudServiceString<Salon> {
    

    private final GenericCrudModel<Salon> crudRepositorySalon;

    public ServiceSalonImpl(GenericCrudModel<Salon> crudRepositorySalon) {
        this.crudRepositorySalon = crudRepositorySalon;
    }

    @Override
    public List<Salon> listar() {
        return this.crudRepositorySalon.listar();
    }

    @Override
    public Salon busqueda(String id) throws NullExceptions, WrongDataType {
        int salonId;
        try {
            salonId = Integer.parseInt(id);
        } catch (NumberFormatException e) {
            throw new WrongDataType("Tipo de dato erróneo. Se esperaba un número entero.");
        }

        Salon salon = this.crudRepositorySalon.busqueda(salonId);

        if (salon == null) {
            throw new NullExceptions("No se encontró el salón con el ID proporcionado.");
        }

        return salon;
    }

    @Override
    public void crear(Salon salon) {
        this.crudRepositorySalon.crear(salon);
    }

    @Override
    public void editar(Salon salon) {
        this.crudRepositorySalon.editar(salon);
    }

    @Override
    public void eliminar(String id) throws WrongDataType {
        // Lanza una WrongDataType si id contiene algún carácter que no sea un número
        if (!id.matches("[0-9]+")) {
            throw new WrongDataType("ID contiene caracteres inválidos");
        }
    
        int salonId = Integer.parseInt(id);
        this.crudRepositorySalon.eliminar(salonId);
    }
}
