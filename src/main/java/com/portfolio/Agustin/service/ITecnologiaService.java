package com.portfolio.Agustin.service;

import com.portfolio.Agustin.model.Tecnologia;
import java.util.List;

public interface ITecnologiaService {
    public List<Tecnologia> verTecnologia ();    
    public void crearTecnologia (Tecnologia tecno);    
    public void borrarTecnologia (Long id);    
    public Tecnologia buscarTecnologia (Long id);    
}
