package com.portfolio.Agustin.repository;

import com.portfolio.Agustin.model.Usuarios;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuariosRepository extends JpaRepository<Usuarios, Long>{    
}
