package com.portfolio.Agustin.controller;

import com.portfolio.Agustin.model.Usuarios;
import com.portfolio.Agustin.service.IUsuariosService;
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
public class UsuariosController {
    
    @Autowired
    private IUsuariosService usuServ;    
    
    @PostMapping ("/usuarios/nueva")
    public void agregarUsuarios (@RequestBody Usuarios usu) {
        usuServ.crearUsuarios(usu);
    }
    
    @GetMapping ("/usuarios/ver")
    @ResponseBody
    public List<Usuarios> verUsuarios () {
        return usuServ.verUsuarios();        
    }
    
    @DeleteMapping ("/usuarios/delete/{id}")
    public void borrarUsuarios (@PathVariable Long id) {
        usuServ.borrarUsuarios(id);
    }
    
}
