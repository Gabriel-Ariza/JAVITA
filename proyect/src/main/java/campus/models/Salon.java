package campus.models;


/* ----  Objetos De la Database ---- */




public class Salon {
    private int id;
    private int capacidadAlumnos;
    private int piso;
    private String identificador;
    private Edificio edificio;

    public Salon(int id,int capacidadAlumnos, int piso, String identificador, Edificio edificio ){
        this.id = id; 
        this.capacidadAlumnos = capacidadAlumnos;
        this.piso = piso;
        this.identificador = identificador;
        this.edificio = edificio;
    }

    public int getId() {
        return id;
    }

    public int getCapacidadAlumnos() {
        return capacidadAlumnos;
    }

    public int getPiso() {
        return piso;
    }

    public String getIdentificador() {
        return identificador;
    }

    public Edificio getEdificio() {
        return edificio;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public void setCapacidadAlumnos(int capacidadAlumnos) {
        this.capacidadAlumnos = capacidadAlumnos;
    }
    
    public void setPiso(int piso) {
        this.piso = piso;
    }
    
    public void setIdentificador(String identificador) {
        this.identificador = identificador;
    }
    
    public void setEdificio(Edificio edificio) {
        this.edificio = edificio;
    }

    public void imprimir() {
        System.out.println("ID: " + this.id);
        System.out.println("Capacidad de Alumnos: " + this.capacidadAlumnos);
        System.out.println("Piso: " + this.piso);
        System.out.println("Identificador: " + this.identificador);
        System.out.println("Edificio: " + this.edificio.getId()); // Asegúrate de tener un método getNombre en tu clase Edificio
    }
}
