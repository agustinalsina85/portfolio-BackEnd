package com.portfolio.Agustin.service;

import com.portfolio.Agustin.model.Usuarios;
import java.util.List;

public interface IUsuariosService {
    
    public List<Usuarios> verUsuarios ();    
    public void crearUsuarios (Usuarios usu);    
    public void borrarUsuarios (Long id);    
    public Usuarios buscarUsuarios (Long id);    
}
