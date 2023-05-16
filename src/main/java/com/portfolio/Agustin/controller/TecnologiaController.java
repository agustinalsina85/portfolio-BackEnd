package com.portfolio.Agustin.controller;

import com.portfolio.Agustin.model.Tecnologia;
import com.portfolio.Agustin.service.ITecnologiaService;
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
public class TecnologiaController {
    
    @Autowired
    private ITecnologiaService tecnoServ;    
    
    @PostMapping ("/tecnologia/nueva")
    public void agregarTecnologia (@RequestBody Tecnologia tecno) {
        tecnoServ.crearTecnologia(tecno);
    }
    
    @GetMapping ("/tecnologia/ver")
    @ResponseBody
    public List<Tecnologia> verTecnologia () {
        return tecnoServ.verTecnologia();        
    }
    
    @DeleteMapping ("/tecnologia/delete/{id}")
    public void borrarTecnologia (@PathVariable Long id) {
        tecnoServ.borrarTecnologia(id);
    }
    
}
