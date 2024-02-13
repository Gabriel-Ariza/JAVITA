package campus.repository.implementations;


import java.util.ArrayList;
/* ----  Importaciones de java  ---- */
import java.util.List;



/* ----  Importaciones de archivos  ---- */

import campus.models.*;
import campus.repository.interfaces.*;



public class RepoTarifaImpl implements GenericCrudModelString<Salon> {


    private List<Salon> listaSalones = new ArrayList<>();


    @Override
    public List<Salon> listar() {
        return listaSalones;
    }


    @Override
    public Salon busqueda(String identificador) {
        for (Salon salon : listaSalones) {
            if (salon.getIdentificador() == identificador) {
                return salon;
            }
        }
        return null;
    }


    @Override
    public void crear(Salon salon) {
        listaSalones.add(salon);
    }


    @Override
    public void editar(Salon salon) {
        for (int i = 0; i < listaSalones.size(); i++) {
            if (listaSalones.get(i).getIdentificador() == salon.getIdentificador()) {
                listaSalones.set(i, salon);
                break;
            }
        }
    }


    @Override
    public void eliminar(String identificador) {
        for (Salon salon : listaSalones) {
            if (salon.getIdentificador() == identificador) {
                listaSalones.remove(salon);
                break;
            }
        }
    }


}
