package campus.models;

import java.time.LocalTime;

/* ----  Objetos De la Database ---- */



public class BloqueHorario {
    private int id;
    private LocalTime horaInicio;
    private LocalTime horaFin;

    public BloqueHorario(int id, LocalTime horaInicio, LocalTime horaFin){
        this.id = id;
        this.horaInicio = horaInicio;
        this.horaFin = horaFin;
    }

    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    public LocalTime getHoraInicio() {
        return horaInicio;
    }
    
    public void setHoraInicio(LocalTime horaInicio) {
        this.horaInicio = horaInicio;
    }
    
    public LocalTime getHoraFin() {
        return horaFin;
    }
    
    public void setHoraFin(LocalTime horaFin) {
        this.horaFin = horaFin;
    }

    public void imprimir() {
        System.out.println("ID: " + this.id);
        System.out.println("Hora de inicio: " + this.horaInicio);
        System.out.println("Hora de fin: " + this.horaFin);
    }
}
