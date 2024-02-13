package campus.models;


import java.text.SimpleDateFormat;

/* ----  Objetos De la Database ---- */

import java.util.Date;



public class Periodo {
    private int id;
    private int codigo;
    private Date año;
    private int semestre;

    public Periodo(int id, int codigo, Date año, int semestre){
        this.id = id;
        this.codigo = codigo;
        this.año = año;
        this.semestre = semestre;
    }

    public int getId() {
        return id;
    }

    public int getCodigo() {
        return codigo;
    }

    public Date getAño() {
        return año;
    }

    public int getSemestre() {
        return semestre;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }
    
    public void setAño(Date año) {
        this.año = año;
    }
    
    public void setSemestre(int semestre) {
        this.semestre = semestre;
    }

    public void imprimir() {
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
    System.out.println("ID: " + this.id);
    System.out.println("Código: " + this.codigo);
    System.out.println("Año: " + dateFormat.format(this.año));
    System.out.println("Semestre: " + this.semestre);
}
}
