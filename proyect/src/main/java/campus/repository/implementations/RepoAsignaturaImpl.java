package campus.repository.implementations;


/* ----  Importaciones de java  ---- */
import java.util.ArrayList;
import java.util.List;


/* ----  Importaciones de archivos  ---- */

import campus.models.Asignatura;
import campus.repository.interfaces.GenericCrudModelString;




public class RepoAsignaturaImpl implements GenericCrudModelString<Asignatura> {

    private List<Asignatura> listaAsignaturas = new ArrayList<>();


    @Override
    public List<Asignatura> listar() {
        return listaAsignaturas;
    }


    @Override
    public Asignatura busqueda(String nombre) {
        for (Asignatura asignatura : listaAsignaturas) {
            if (asignatura.getNombre() == nombre) {
                return asignatura;
            }
        }
        return null;
    }


    @Override
    public void crear(Asignatura asignatura) {
        listaAsignaturas.add(asignatura);
    }


    @Override
    public void editar(Asignatura asignatura) {
        for (int i = 0; i < listaAsignaturas.size(); i++) {
            if (listaAsignaturas.get(i).getNombre() == asignatura.getNombre()) {
                listaAsignaturas.set(i, asignatura);
                break;
            }
        }
    }


    @Override
    public void eliminar(String nombre) {
        for (Asignatura asignatura : listaAsignaturas) {
            if (asignatura.getNombre() == nombre) {
                listaAsignaturas.remove(asignatura);
                break;
            }
        }
    }


}
