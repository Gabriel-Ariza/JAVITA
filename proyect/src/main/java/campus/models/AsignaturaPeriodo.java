package campus.models;


/* ----  Objetos De la Database ---- */




public class AsignaturaPeriodo {
    private int id;
    private int codigo;
    private Profesor profesor;
    private Periodo periodo;
    private Asignatura asignatura;

    public AsignaturaPeriodo(int id, int codigo, Profesor profesor,Periodo periodo,Asignatura asignatura ){
        this.id = id;
        this.codigo = codigo;
        this.profesor = profesor;
        this.periodo = periodo;
        this.asignatura = asignatura;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public Profesor getProfesor() {
        return profesor;
    }

    public void setProfesor(Profesor profesor) {
        this.profesor = profesor;
    }

    public Periodo getPeriodo() {
        return periodo;
    }

    public void setPeriodo(Periodo periodo) {
        this.periodo = periodo;
    }

    public Asignatura getAsignatura() {
        return asignatura;
    }

    public void setAsignatura(Asignatura asignatura) {
        this.asignatura = asignatura;
    }

    public void imprimir() {
        System.out.println("ID: " + this.id);
        System.out.println("Código: " + this.codigo);
        System.out.println("Profesor ID: " + this.profesor.getId()); // Asegúrate de tener un método getNombre en tu clase Profesor
        System.out.println("Periodo ID: " + this.periodo.getId()); // Asegúrate de tener un método getNombre en tu clase Periodo
        System.out.println("Asignatura ID: " + this.asignatura.getId()); // Asegúrate de tener un método getNombre en tu clase Asignatura
    }
}
