package campus.models;


/* ----  Objetos De la Database ---- */




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

    public void setId(int id) {
        this.id = id;
    }
    
    public void setValorCredito(double valorCredito) {
        this.valorCredito = valorCredito;
    }
    
    public void setPeriodo(Periodo periodo) {
        this.periodo = periodo;
    }
    
    public void setPrograma(Programa programa) {
        this.programa = programa;
    }

    public void imprimir() {
        System.out.println("ID: " + this.id);
        System.out.println("Valor Crédito: " + this.valorCredito);
        System.out.println("Periodo ID: " + this.periodo.getId()); // Asegúrate de tener un método getNombre en tu clase Periodo
        System.out.println("Programa ID: " + this.programa.getId()); // Asegúrate de tener un método getNombre en tu clase Programa
    }
}
