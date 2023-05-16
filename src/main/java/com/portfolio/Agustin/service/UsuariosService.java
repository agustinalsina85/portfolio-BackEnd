package com.portfolio.Agustin.service;

import com.portfolio.Agustin.model.Usuarios;
import com.portfolio.Agustin.repository.UsuariosRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UsuariosService implements IUsuariosService {
    
    @Autowired
    public UsuariosRepository usuRepo;

    @Override
    public List<Usuarios> verUsuarios() {
        return usuRepo.findAll();    
    }

    @Override
    public void crearUsuarios(Usuarios usu) {
        usuRepo.save(usu);
    }

    @Override
    public void borrarUsuarios(Long id) {
        usuRepo.deleteById(id);
    }

    @Override
    public Usuarios buscarUsuarios(Long id) {
        return usuRepo.findById(id).orElse(null);
    }
    
}
