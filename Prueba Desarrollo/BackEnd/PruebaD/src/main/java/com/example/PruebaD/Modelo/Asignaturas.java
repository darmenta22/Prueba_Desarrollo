
package com.example.PruebaD.Modelo;


import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.List;
import javax.persistence.*;




@Entity
@Table(name = "asignaturas")
public class Asignaturas  {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    @Column (name = "ID")
    private int ID;
    @Column (name = "Nombre_asignatura")
    private String Nombre_asignatura;
    
    @ManyToOne
    @JsonIgnore
    @JoinColumn(name = "Cod_Profesor")
    private Profesores profesor;
    
    @ManyToMany
    private List<Estudiantes> estudiantes;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNombre_asignatura() {
        return Nombre_asignatura;
    }

    public void setNombre_asignatura(String Nombre_asignatura) {
        this.Nombre_asignatura = Nombre_asignatura;
    }

    public Profesores getProfesor() {
        return profesor;
    }

    public void setProfesor(Profesores profesor) {
        this.profesor = profesor;
    }

    public List<Estudiantes> getEstudiantes() {
        return estudiantes;
    }

    public void setEstudiantes(List<Estudiantes> estudiantes) {
        this.estudiantes = estudiantes;
    }

    
        

   
    
}
