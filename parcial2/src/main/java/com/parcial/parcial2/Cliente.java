package com.parcial.parcial2;
import java.math.BigDecimal;
import java.security.Timestamp;
import java.sql.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cliente {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idcliente;
    private String primernombre;
    private String segundonombre;
    private String otronombre;
    private String primerapellido;
    private String segundoapellido;
    private String otroapellido;
    private String genero;
    private Date fechanacimiento;
    private String segmento;
    private BigDecimal sueldo;
    private String dpi;
    private String correo;
    private String telefono;
    private String direccion;
    private Timestamp fechacreacion;
}


