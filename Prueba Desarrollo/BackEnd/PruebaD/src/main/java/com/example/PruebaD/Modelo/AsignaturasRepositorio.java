
package com.example.PruebaD.Modelo;

import java.util.List;
import org.springframework.data.repository.Repository;

public interface AsignaturasRepositorio extends Repository<Asignaturas, Integer>{
   
    public List<Asignaturas>findAll();
    
   
}
