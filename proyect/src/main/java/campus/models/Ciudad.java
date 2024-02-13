package campus.models;


/* ----  Objetos De la Database ---- */




public class Ciudad {
    private int id;
    private String nombre;


    public Ciudad(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public int getId() {
        return id;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void imprimir() {
        System.out.println("ID: " + this.id);
        System.out.println("Nombre: " + this.nombre);
    }
}
