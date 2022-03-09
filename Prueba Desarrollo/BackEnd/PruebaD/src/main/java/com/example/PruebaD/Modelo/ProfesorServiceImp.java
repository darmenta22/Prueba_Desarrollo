
package com.example.PruebaD.Modelo;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProfesorServiceImp implements ConsultaService{
    @Autowired
    private ProfesoresRepositorio repositorio;
    private AsignaturasRepositorio repositorio2;
    
    @Override
    public List<Profesores> listar() {
        return repositorio.findAll();
    }
    
    @Override
    public List<Asignaturas> listar2() {
        return repositorio2.findAll();
    }


}
