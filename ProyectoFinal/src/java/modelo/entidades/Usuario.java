/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.entidades;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

/**
 *
 * @author carlos
 */
@Entity
public class Usuario implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(length = 20, nullable = false)
    private String email;
    @Column(length = 30, nullable = false)
    private String password;
    @Column(length = 20, nullable = false)
    private String nombre;
    @Column(length = 20, nullable = false)
    private String apellidos;
    @Column(length = 20, nullable = false)
    private String tipo;
    @ElementCollection
    @CollectionTable(name = "me_gusta_peliculas", joinColumns = @JoinColumn(name = "id_usuario"))
    @Column(name = "id_pelicula")
    private List<Integer> meGustaPeliculas;
    @ElementCollection
    @CollectionTable(name = "me_gusta_series", joinColumns = @JoinColumn(name = "id_usuario"))
    @Column(name = "id_serie")
    private List<Integer> meGustaSeries;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public List<Integer> getMeGustaPeliculas() {
        return meGustaPeliculas;
    }

    public void setMeGustaPeliculas(List<Integer> meGustaPeliculas) {
        this.meGustaPeliculas = meGustaPeliculas;
    }

    public List<Integer> getMeGustaSeries() {
        return meGustaSeries;
    }

    public void setMeGustaSeries(List<Integer> meGustaSeries) {
        this.meGustaSeries = meGustaSeries;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Usuario)) {
            return false;
        }
        Usuario other = (Usuario) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return nombre + " " + apellidos;
    }
}
