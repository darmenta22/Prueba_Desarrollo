
package com.example.PruebaD.Modelo;


import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.List;
import javax.persistence.*;


@Entity
@Table(name = "estudiantes")
public class Estudiantes {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    @Column (name = "ID")
    private int ID;
    @Column (name = "Nombre_Estudiante")
    private String Nombre_Estudiante;
    
    
    @ManyToMany(mappedBy="estudiantes")
    @JsonIgnore
    private List<Asignaturas> asignaturas;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNombre_Estudiante() {
        return Nombre_Estudiante;
    }

    public void setNombre_Estudiante(String Nombre_Estudiante) {
        this.Nombre_Estudiante = Nombre_Estudiante;
    }
    

    


}
