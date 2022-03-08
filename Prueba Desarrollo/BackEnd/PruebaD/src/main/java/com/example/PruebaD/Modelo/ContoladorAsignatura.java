
package com.example.PruebaD.Modelo;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "http://localhost:4200/",maxAge = 3600)
@RestController
@RequestMapping("Asignaturas")
public class ContoladorAsignatura {
    
    @Autowired
    ConsultaService service;
    
    
    @GetMapping
    public List<Asignaturas>listar2(){
        return service.listar2();
    }
}
