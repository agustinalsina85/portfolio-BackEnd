package com.portfolio.Agustin.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
@Entity
public class Educacion {
    
    @Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE)
    private Long id;
    private String tituloEdu;
    private String institucionEdu;
    private String periodoEdu;
    private String urlLogoEdu;
    private String descripcionEdu;    
}
