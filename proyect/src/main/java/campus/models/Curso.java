package campus.models;

/* ----  Objetos De la Database ---- */




public class Curso {
    private int id;
    private String nombre;
    private String temas;
    private String competencias;


    public Curso(int id, String nombre, String temas, String competencias){
        this.id = id;
        this.nombre = nombre;
        this.temas = temas;
        this.competencias = competencias;
        
    }

    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public String getTemas() {
        return temas;
    }

    public String getCompetencias() {
        return competencias;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public void setTemas(String temas) {
        this.temas = temas;
    }
    
    public void setCompetencias(String competencias) {
        this.competencias = competencias;
    }

    public void imprimir() {
        System.out.println("ID: " + this.id);
        System.out.println("Nombre: " + this.nombre);
        System.out.println("Temas: " + this.temas);
        System.out.println("Competencias: " + this.competencias);
    }
}
