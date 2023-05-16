package com.portfolio.Agustin.controller;

import com.portfolio.Agustin.model.Persona;
import com.portfolio.Agustin.service.IPersonaService;
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
public class PersonaController {
    
    @Autowired
    private IPersonaService persoServ;    
    
    @PostMapping ("/persona/nueva")
    public void agregarPersona (@RequestBody Persona pers) {
        persoServ.crearPersona(pers);
    }
    
    @GetMapping ("/persona/ver")
    @ResponseBody
    public List<Persona> verPersonas () {
        return persoServ.verPersonas();        
    }
    
    @DeleteMapping ("/persona/delete/{id}")
    public void borrarPersona (@PathVariable Long id) {
        persoServ.borrarPersona(id);
    }
    
}
