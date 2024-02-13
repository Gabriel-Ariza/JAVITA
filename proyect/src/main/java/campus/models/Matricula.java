package campus.models;


/* ----  Objetos De la Database ---- */




public class Matricula {
    private int id;
    private Alumno alumno;
    private AsignaturaPeriodo asignaturaPeriodo;
    public enum EstadoEnum{aprobada,reprobada,en_curso};
    private EstadoEnum estado;

    public Matricula(int id, Alumno alumno,AsignaturaPeriodo asignaturaPeriodo, EstadoEnum estado){
        this.id = id;
        this.alumno = alumno;
        this.asignaturaPeriodo = asignaturaPeriodo;
        this.estado = estado;
    
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public void setAlumno(Alumno alumno) {
        this.alumno = alumno;
    }
    
    public void setAsignaturaPeriodo(AsignaturaPeriodo asignaturaPeriodo) {
        this.asignaturaPeriodo = asignaturaPeriodo;
    }
    
    public void setEstado(EstadoEnum estado) {
        this.estado = estado;
    }

    public int getId() {
        return id;
    }
    
    public Alumno getAlumno() {
        return alumno;
    }
    
    public AsignaturaPeriodo getAsignaturaPeriodo() {
        return asignaturaPeriodo;
    }
    
    public EstadoEnum getEstado() {
        return estado;
    }

    public void imprimir() {
        System.out.println("ID: " + this.id);
        System.out.println("Alumno ID: " + this.alumno.getId()); // Asegúrate de tener un método getNombre en tu clase Alumno
        System.out.println("Asignatura Periodo: " + this.asignaturaPeriodo.getId()); // Asegúrate de tener un método getId en tu clase AsignaturaPeriodo
        System.out.println("Estado: " + this.estado);
    }
}
