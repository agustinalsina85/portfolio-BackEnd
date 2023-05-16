package com.portfolio.Agustin.controller;

import com.portfolio.Agustin.model.Proyectos;
import com.portfolio.Agustin.service.IProyectosService;
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
public class ProyectosController {
    
    @Autowired
    private IProyectosService proyeServ;    
    
    @PostMapping ("/proyectos/nueva")
    public void agregarProyectos (@RequestBody Proyectos proye) {
        proyeServ.crearProyectos(proye);
    }
    
    @GetMapping ("/proyectos/ver")
    @ResponseBody
    public List<Proyectos> verProyectos () {
        return proyeServ.verProyectos();        
    }
    
    @DeleteMapping ("/proyectos/delete/{id}")
    public void borrarProyectos (@PathVariable Long id) {
        proyeServ.borrarProyectos(id);
    }
    
}
