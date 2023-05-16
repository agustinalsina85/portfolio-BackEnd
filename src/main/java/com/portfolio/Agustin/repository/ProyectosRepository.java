package com.portfolio.Agustin.repository;

import com.portfolio.Agustin.model.Proyectos;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProyectosRepository extends JpaRepository<Proyectos, Long> {
}
