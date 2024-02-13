package campus.repository.implementations;


/* ----  Importaciones de java  ---- */
import java.util.List;


/* ----  Importaciones de archivos  ---- */

import campus.models.*;
import campus.repository.interfaces.*;



public class RepoHorarioImpl implements HorarioModel  {
    
    private List<Horario> listaHorarios;


    @Override
    public List<Horario> listar() {
        return listaHorarios;
    }


    @Override
    public Horario busquedaPorAlumno(int id) {
        for (Horario horario : listaHorarios) {
            if (horario.getId() == id) {
                return horario;
            }
        }
        return null;
    }



}
