package com.portfolio.Agustin.service;

import com.portfolio.Agustin.model.Tecnologia;
import com.portfolio.Agustin.repository.TecnologiaRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TecnologiaService implements ITecnologiaService {
    
    @Autowired
    public TecnologiaRepository tecnoRepo;

    @Override
    public List<Tecnologia> verTecnologia() {
        return tecnoRepo.findAll();    
    }

    @Override
    public void crearTecnologia(Tecnologia tecno) {
        tecnoRepo.save(tecno);
    }

    @Override
    public void borrarTecnologia(Long id) {
        tecnoRepo.deleteById(id);
    }

    @Override
    public Tecnologia buscarTecnologia(Long id) {
        return tecnoRepo.findById(id).orElse(null);
    }
    
}
