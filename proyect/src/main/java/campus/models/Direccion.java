package campus.models;


/* ----  Objetos De la Database ---- */




public class Direccion {
    private int id;
    private String barrio;
    private String calle;
    private String numero_casa;

    public Direccion(String barrio,String calle,String numero_casa){
        this.barrio = barrio;
        this.calle = calle;
        this.numero_casa = numero_casa;
    }

    public Direccion(int id, String barrio, String calle, String numero_casa) {
        this.id = id;
        this.barrio = barrio;
        this.calle = calle;
        this.numero_casa = numero_casa;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBarrio() {
        return barrio;
    }

    public void setBarrio(String barrio) {
        this.barrio = barrio;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public String getNumeroCasa() {
        return numero_casa;
    }

    public void setNumeroCasa(String numero_casa) {
        this.numero_casa = numero_casa;
    }

    public void imprimir() {
        System.out.println("ID: " + this.id);
        System.out.println("Barrio: " + this.barrio);
        System.out.println("Calle: " + this.calle);
        System.out.println("Número de casa: " + this.numero_casa);
    }
}