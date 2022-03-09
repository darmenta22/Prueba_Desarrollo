
package com.example.PruebaD.Modelo;

import java.util.List;
import org.springframework.data.repository.Repository;


public interface ProfesoresRepositorio extends Repository<Profesores, Integer>{

    public List<Profesores> findAll();

    
    
    
}
