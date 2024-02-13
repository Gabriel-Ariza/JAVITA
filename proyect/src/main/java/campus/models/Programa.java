package campus.models;


/* ----  Objetos De la Database ---- */




public class Programa {
    private int id;
    private String nombre;
    private boolean nivel;

    public Programa() {}

    Programa(int id, String nombre, boolean nivel){
        this.id = id;
        this.nombre = nombre;
        this.nivel = nivel;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public boolean isNivel() {
        return nivel;
    }

    public void setNivel(boolean nivel) {
        this.nivel = nivel;
    }

    public void imprimir() {
        System.out.println("ID: " + this.id);
        System.out.println("Nombre: " + this.nombre);
        System.out.println("Nivel: " + (this.nivel ? "Sí" : "No"));
    }
}
