package campus.models;


/* ----  Objetos De la Database ---- */




public class Profesor {
    private int id;
    private Persona persona;
    private Facultad departamento;

    public Profesor(int id, Persona persona, Facultad departamento) {
        this.id = id;
        this.persona = persona;
    }

    public int getId() {
        return id;
    }

    public Persona getPersona() {
        return persona;
    }

    public Facultad getDepartamento() {
        return departamento;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public void setPersona(Persona persona) {
        this.persona = persona;
    }
    
    public void setDepartamento(Facultad departamento) {
        this.departamento = departamento;
    }

    public void imprimir() {
        System.out.println("ID: " + this.id);
        System.out.println("Persona: " + this.persona.getNombres()); // Asegúrate de tener un método getNombres en tu clase Persona
        System.out.println("Departamento: " + this.departamento.getNombre()); // Asegúrate de tener un método getNombre en tu clase Facultad
    }
}
