
package com.example.PruebaD.Modelo;


import java.util.List;
import javax.persistence.*;

@Entity
@Table(name = "profesores")
public class Profesores  {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    @Column (name = "ID")
    private int ID;
    @Column (name = "Nombres")
    private String Nombres;
    
    
    @OneToMany(mappedBy = "profesor")
    private List<Asignaturas> asignaturas;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    public List<Asignaturas> getAsignaturas() {
        return asignaturas;
    }

    public void setAsignaturas(List<Asignaturas> asignaturas) {
        this.asignaturas = asignaturas;
    }

   
    @Override
    public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Profesores other = (Profesores) obj;
		if (asignaturas == null) {
			if (other.asignaturas != null)
				return false;
		} else if (!asignaturas.equals(other.asignaturas))
			return false;
		if (ID != other.ID)
			return false;
		if (Nombres == null) {
			if (other.Nombres != null)
				return false;
		} else if (!Nombres.equals(other.Nombres))
			return false;
		return true;
	}		

    

       
    
}
