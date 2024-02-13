package campus.repository.implementations;


/* ----  Importaciones de java  ---- */
import java.util.ArrayList;
import java.util.List;


/* ----  Importaciones de archivos  ---- */

import campus.models.Facultad;
import campus.repository.interfaces.GenericCrudModelString;



public class RepoFacultadImpl implements GenericCrudModelString<Facultad> {

    private List<Facultad> listaFacultades = new ArrayList<>();


    @Override
    public List<Facultad> listar() {
        return listaFacultades;
    }


    @Override
    public Facultad busqueda(String nombre) {
        for (Facultad facultad : listaFacultades) {
            if (facultad.getNombre() == nombre) {
                return facultad;
            }
        }
        return null;
    }


    @Override
    public void crear(Facultad facultad) {
        listaFacultades.add(facultad);
    }


    @Override
    public void editar(Facultad facultad) {
        for (int i = 0; i < listaFacultades.size(); i++) {
            if (listaFacultades.get(i).getNombre() == facultad.getNombre()) {
                listaFacultades.set(i, facultad);
                break;
            }
        }
    }


    @Override
    public void eliminar(String nombre) {
        for (Facultad facultad : listaFacultades) {
            if (facultad.getNombre() == nombre) {
                listaFacultades.remove(facultad);
                break;
            }
        }
    }


}
