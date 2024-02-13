package campus.models;


import java.text.SimpleDateFormat;
/* ----  Objetos De la Database ---- */
import java.util.Date;



public class Horario {
    private int id;
    private Date dia;
    private Salon salon;
    private BloqueHorario bloquehorario;
    private AsignaturaPeriodo asignaturaPeriodo;

    public Horario(int id, Date dia, Salon salon, BloqueHorario bloquehorario, AsignaturaPeriodo asignaturaperiodo){
        this.id = id;
        this.dia = dia;
        this.salon = salon;
        this.bloquehorario = bloquehorario;
        this.asignaturaPeriodo = asignaturaperiodo;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public void setDia(Date dia) {
        this.dia = dia;
    }
    
    public void setSalon(Salon salon) {
        this.salon = salon;
    }
    
    public void setBloqueHorario(BloqueHorario bloquehorario) {
        this.bloquehorario = bloquehorario;
    }
    
    public void setAsignaturaPeriodo(AsignaturaPeriodo asignaturaPeriodo) {
        this.asignaturaPeriodo = asignaturaPeriodo;
    }

    public int getId() {
        return id;
    }
    
    public Date getDia() {
        return dia;
    }
    
    public Salon getSalon() {
        return salon;
    }
    
    public BloqueHorario getBloqueHorario() {
        return bloquehorario;
    }
    
    public AsignaturaPeriodo getAsignaturaPeriodo() {
        return asignaturaPeriodo;
    }

    public void imprimir() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        System.out.println("ID: " + this.id);
        System.out.println("Día: " + dateFormat.format(this.dia));
        System.out.println("Salón ID: " + this.salon.getId()); // Asegúrate de tener un método getNombre en tu clase Salon
        System.out.println("Bloque Horario: ID " + this.bloquehorario.getId()); // Asegúrate de tener un método getId en tu clase BloqueHorario
        System.out.println("Asignatura Periodo ID: " + this.asignaturaPeriodo.getId()); // Asegúrate de tener un método getId en tu clase AsignaturaPeriodo
    }


    public boolean matches(String string) {
        throw new UnsupportedOperationException("Unimplemented method 'matches'");
    }
}
