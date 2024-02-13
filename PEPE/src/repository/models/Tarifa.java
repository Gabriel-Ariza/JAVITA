package repository.models;

public class Tarifa {
    private int id;
    private double valorCredito;
    private Periodo periodo;
    private Programa programa;

    public Tarifa(int id,double costoTotal,Programa programa,double valorCredito,Periodo periodo){
        this.id = id;
        this.programa = programa;
        this.valorCredito = valorCredito;
        this.periodo = periodo;
    }

    public int getId() {
        return id;
    }

    public double getValorCredito() {
        return valorCredito;
    }

    public Periodo getPeriodo() {
        return periodo;
    }

    public Programa getPrograma() {
        return programa;
    }
}
