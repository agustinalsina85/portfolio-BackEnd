package com.portfolio.Agustin.service;

import com.portfolio.Agustin.model.Proyectos;
import java.util.List;

public interface IProyectosService {
    
    public List<Proyectos> verProyectos ();    
    public void crearProyectos (Proyectos exp);    
    public void borrarProyectos (Long id);    
    public Proyectos buscarProyectos (Long id);
}
