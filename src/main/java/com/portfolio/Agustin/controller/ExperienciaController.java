package com.portfolio.Agustin.controller;

import com.portfolio.Agustin.model.Experiencia;
import com.portfolio.Agustin.service.IExperienciaService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ExperienciaController {
    
    @Autowired
    private IExperienciaService expServ;    
    
    @PostMapping ("/experiencia/nueva")
    public void agregarExperiencia (@RequestBody Experiencia exp) {
        expServ.crearExperiencia(exp);
    }
    
    @GetMapping ("/experiencia/ver")
    @ResponseBody
    public List<Experiencia> verExperiencia () {
        return expServ.verExperiencia();        
    }
    
    @DeleteMapping ("/experiencia/delete/{id}")
    public void borrarExperiencia (@PathVariable Long id) {
        expServ.borrarExperiencia(id);
    }
    
    
    
}
