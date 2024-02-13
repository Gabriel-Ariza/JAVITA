package campus.repository.implementations;


/* ----  Importaciones de java  ---- */
import java.util.ArrayList;
import java.util.List;


/* ----  Importaciones de archivos  ---- */

import campus.models.Periodo;
import campus.repository.interfaces.GenericCrudModel;



public class RepoPeriodoImpl implements GenericCrudModel<Periodo> {
    
    private List<Periodo> listaPeriodos = new ArrayList<>();

    
    @Override
    public List<Periodo> listar() {
        return listaPeriodos;
    }


    @Override
    public Periodo busqueda(int id) {
        for (Periodo periodo : listaPeriodos) {
            if (periodo.getId() == id) {
                return periodo;
            }
        }
        return null;
    }


    @Override
    public void crear(Periodo periodo) {
        listaPeriodos.add(periodo);
    }


    @Override
    public void editar(Periodo periodo) {
        for (int i = 0; i < listaPeriodos.size(); i++) {
            if (listaPeriodos.get(i).getId() == periodo.getId()) {
                listaPeriodos.set(i, periodo);
                break;
            }
        }
    }


    @Override
    public void eliminar(int id) {
        for (Periodo periodo : listaPeriodos) {
            if (periodo.getId() == id) {
                listaPeriodos.remove(periodo);
                break;
            }
        }
    }


}
