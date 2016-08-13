package co.edu.usbcali.mathusb.modelo;
// Generated 23-mar-2016 0:44:34 by Hibernate Tools 4.0.0


import java.util.HashSet;
import java.util.Set;

/**
 * TipoHerramienta generated by hbm2java
 */
public class TipoHerramienta  implements java.io.Serializable {


     private Long tiheId;
     private String descripcionHerramienta;
     private String nombreCorto;
     private Set<Herramienta> herramientas = new HashSet<Herramienta>(0);

    public TipoHerramienta() {
    }

	
    public TipoHerramienta(Long tiheId, String descripcionHerramienta, String nombreCorto) {
        this.tiheId = tiheId;
        this.descripcionHerramienta = descripcionHerramienta;
        this.nombreCorto = nombreCorto;
    }
    public TipoHerramienta(Long tiheId, String descripcionHerramienta, String nombreCorto, Set<Herramienta> herramientas) {
       this.tiheId = tiheId;
       this.descripcionHerramienta = descripcionHerramienta;
       this.nombreCorto = nombreCorto;
       this.herramientas = herramientas;
    }
   
    public Long getTiheId() {
        return this.tiheId;
    }
    
    public void setTiheId(Long tiheId) {
        this.tiheId = tiheId;
    }
    public String getDescripcionHerramienta() {
        return this.descripcionHerramienta;
    }
    
    public void setDescripcionHerramienta(String descripcionHerramienta) {
        this.descripcionHerramienta = descripcionHerramienta;
    }
    public String getNombreCorto() {
        return this.nombreCorto;
    }
    
    public void setNombreCorto(String nombreCorto) {
        this.nombreCorto = nombreCorto;
    }
    public Set<Herramienta> getHerramientas() {
        return this.herramientas;
    }
    
    public void setHerramientas(Set<Herramienta> herramientas) {
        this.herramientas = herramientas;
    }




}


