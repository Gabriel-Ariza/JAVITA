package campus.repository.implementations;


/* ----  Importaciones de java  ---- */
import java.util.ArrayList;
import java.util.List;


/* ----  Importaciones de archivos  ---- */

import campus.models.Alumno;
import campus.repository.interfaces.GenericCrudModel;
import campus.services.implementations.ServiceAlumnoImpl;



public class RepoAlumnoImpl implements GenericCrudModel<Alumno>  {

    @SuppressWarnings("unused")
    private ServiceAlumnoImpl serviceAlumno; 
    private List<Alumno> listaAlumnos = new ArrayList<>();


    @Override
    public List<Alumno> listar() {
        return listaAlumnos;
    }


    @Override
    public Alumno busqueda(int id) {
        
        for (Alumno alumno : listaAlumnos) {
            if (alumno.getId() == id) {
                return alumno;
            }
        }
        return null; 
    }


    @Override
    public void crear(Alumno alumno) {
        
        listaAlumnos.add(alumno);
    }


    @Override
    public void editar(Alumno alumno) {
        
        for (int i = 0; i < listaAlumnos.size(); i++) {
            if (listaAlumnos.get(i).getId() == alumno.getId()) {
                listaAlumnos.set(i, alumno);
                break;
            }
        }
    }

    
    @Override
    public void eliminar(int id) {
      
        for (Alumno alumno : listaAlumnos) {
            if (alumno.getId() == id) {
                listaAlumnos.remove(alumno);
                break;
            }
        }
    }


}
