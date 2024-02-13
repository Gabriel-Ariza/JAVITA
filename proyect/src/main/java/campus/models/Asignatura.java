package campus.models;


/* ----  Objetos De la Database ---- */




public class Asignatura {
    private int id;
    private String nombre;
    private int creditos;
    private int cupoDisponible;
    private Curso curso;
    private Programa programa;

    public Asignatura(int id, String nombre,int creditos,int cupoDisponible, Curso curso, Programa programa){
        this.id = id;
        this.nombre = nombre;
        this.creditos = creditos;
        this.cupoDisponible = cupoDisponible;
        this.curso = curso;
        this.programa = programa;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public void setCreditos(int creditos) {
        this.creditos = creditos;
    }
    
    public void setCupoDisponible(int cupoDisponible) {
        this.cupoDisponible = cupoDisponible;
    }
    
    public void setCurso(Curso curso) {
        this.curso = curso;
    }
    
    public void setPrograma(Programa programa) {
        this.programa = programa;
    }

    public int getId() {
        return id;
    }
    
    public String getNombre() {
        return nombre;
    }
    
    public int getCreditos() {
        return creditos;
    }
    
    public int getCupoDisponible() {
        return cupoDisponible;
    }
    
    public Curso getCurso() {
        return curso;
    }
    
    public Programa getPrograma() {
        return programa;
    }

    public void imprimir() {
        System.out.println("ID: " + this.id);
        System.out.println("Nombre: " + this.nombre);
        System.out.println("Créditos: " + this.creditos);
        System.out.println("Cupo Disponible: " + this.cupoDisponible);
        System.out.println("Curso: " + this.curso);
        System.out.println("Programa ID: " + this.programa.getId());
    }
}