package campus.repository.implementations;


/* ----  Importaciones de java  ---- */
import java.util.ArrayList;
import java.util.List;


/* ----  Importaciones de archivos  ---- */

import campus.models.Curso;
import campus.repository.interfaces.GenericCrudModelString;



public class RepoCursoImpl implements GenericCrudModelString<Curso> {
    
    private List<Curso> listaCursos = new ArrayList<>();


    @Override
    public List<Curso> listar() {
        return listaCursos;
    }


    @Override
    public Curso busqueda(String nombre) {
        for (Curso curso : listaCursos) {
            if (curso.getNombre() == nombre) {
                return curso;
            }
        }
        return null;
    }


    @Override
    public void crear(Curso curso) {
        listaCursos.add(curso);
    }


    @Override
    public void editar(Curso curso) {
        for (int i = 0; i < listaCursos.size(); i++) {
            if (listaCursos.get(i).getNombre() == curso.getNombre()) {
                listaCursos.set(i, curso);
                break;
            }
        }
    }


    @Override
    public void eliminar(String nombre) {
        for (Curso curso : listaCursos) {
            if (curso.getNombre() == nombre) {
                listaCursos.remove(curso);
                break;
            }
        }
    }


}
