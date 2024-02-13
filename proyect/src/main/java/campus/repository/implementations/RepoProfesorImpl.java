package campus.repository.implementations;


/* ----  Importaciones de java  ---- */
import java.util.ArrayList;
import java.util.List;


/* ----  Importaciones de archivos  ---- */

import campus.models.Profesor;
import campus.repository.interfaces.GenericCrudModel;



public class RepoProfesorImpl implements GenericCrudModel<Profesor> {
    
    private List<Profesor> listaProfesores = new ArrayList<>();


    @Override
    public List<Profesor> listar() {
        return listaProfesores;
    }


    @Override
    public Profesor busqueda(int id) {
        for (Profesor profesor : listaProfesores) {
            if (profesor.getId() == id) {
                return profesor;
            }
        }
        return null;
    }


    @Override
    public void crear(Profesor profesor) {
        listaProfesores.add(profesor);
    }


    @Override
    public void editar(Profesor profesor) {
        for (int i = 0; i < listaProfesores.size(); i++) {
            if (listaProfesores.get(i).getId() == profesor.getId()) {
                listaProfesores.set(i, profesor);
                break;
            }
        }
    }


    @Override
    public void eliminar(int id) {
        for (Profesor profesor : listaProfesores) {
            if (profesor.getId() == id) {
                listaProfesores.remove(profesor);
                break;
            }
        }
    }


}
