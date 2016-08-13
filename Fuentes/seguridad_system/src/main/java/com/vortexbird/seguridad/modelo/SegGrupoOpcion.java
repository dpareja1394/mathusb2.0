package com.vortexbird.seguridad.modelo;
// Generated 14/11/2012 05:54:52 PM by Zathura powered by Hibernate Tools 3.2.4.GA


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * SegGrupoOpcion generated by Zathura powered by Hibernate-tools(hbm2java)
 */
@Entity
@Table(name="SEG_GRUPO_OPCION"
,schema="PUBLIC"
		)
public class SegGrupoOpcion  implements java.io.Serializable {


	private Long gruCodigo;
	private SegUsuario segUsuario;
	private SegGrupoOpcion segGrupoOpcion;
	private SegSistema segSistema;
	private String gruNombre;
	private String gruDescripcion;
	private String gruLlaveAcceso;
	private String gruEstadoRegistro;
	private String gruIcono;
	private Set<SegPermiso> segPermisos = new HashSet<SegPermiso>(0);
	private Set<SegOpcion> segOpcions = new HashSet<SegOpcion>(0);
	private Set<SegGrupoOpcion> segGrupoOpcions = new HashSet<SegGrupoOpcion>(0);

	public SegGrupoOpcion() {
	}


	public SegGrupoOpcion(Long gruCodigo, SegSistema segSistema, String gruNombre, String gruEstadoRegistro) {
		this.gruCodigo = gruCodigo;
		this.segSistema = segSistema;
		this.gruNombre = gruNombre;
		this.gruEstadoRegistro = gruEstadoRegistro;
	}
	public SegGrupoOpcion(Long gruCodigo, SegUsuario segUsuario, SegGrupoOpcion segGrupoOpcion, SegSistema segSistema, String gruNombre, String gruDescripcion, String gruLlaveAcceso, String gruEstadoRegistro, Set<SegPermiso> segPermisos, Set<SegOpcion> segOpcions, Set<SegGrupoOpcion> segGrupoOpcions) {
		this.gruCodigo = gruCodigo;
		this.segUsuario = segUsuario;
		this.segGrupoOpcion = segGrupoOpcion;
		this.segSistema = segSistema;
		this.gruNombre = gruNombre;
		this.gruDescripcion = gruDescripcion;
		this.gruLlaveAcceso = gruLlaveAcceso;
		this.gruEstadoRegistro = gruEstadoRegistro;
		this.segPermisos = segPermisos;
		this.segOpcions = segOpcions;
		this.segGrupoOpcions = segGrupoOpcions;
	}

	@Id 
	@SequenceGenerator(name = "seg_grupo_opcion_gru_codigo_seq", sequenceName = "seg_grupo_opcion_gru_codigo_seq")
	@GeneratedValue(generator = "seg_grupo_opcion_gru_codigo_seq", strategy = GenerationType.SEQUENCE)
	@Column(name="GRU_CODIGO", unique=true, nullable=false)
	public Long getGruCodigo() {
		return this.gruCodigo;
	}

	public void setGruCodigo(Long gruCodigo) {
		this.gruCodigo = gruCodigo;
	}

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="MOD_USU_CODIGO")
	public SegUsuario getSegUsuario() {
		return this.segUsuario;
	}

	public void setSegUsuario(SegUsuario segUsuario) {
		this.segUsuario = segUsuario;
	}

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="GRU_CODIGO_PADRE")
	public SegGrupoOpcion getSegGrupoOpcion() {
		return this.segGrupoOpcion;
	}

	public void setSegGrupoOpcion(SegGrupoOpcion segGrupoOpcion) {
		this.segGrupoOpcion = segGrupoOpcion;
	}

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="SIS_CODIGO", nullable=false)
	public SegSistema getSegSistema() {
		return this.segSistema;
	}

	public void setSegSistema(SegSistema segSistema) {
		this.segSistema = segSistema;
	}


	@Column(name="GRU_NOMBRE", nullable=false, length=50)
	public String getGruNombre() {
		return this.gruNombre;
	}

	public void setGruNombre(String gruNombre) {
		this.gruNombre = gruNombre;
	}


	@Column(name="GRU_DESCRIPCION", length=200)
	public String getGruDescripcion() {
		return this.gruDescripcion;
	}

	public void setGruDescripcion(String gruDescripcion) {
		this.gruDescripcion = gruDescripcion;
	}


	@Column(name="GRU_LLAVE_ACCESO", length=200)
	public String getGruLlaveAcceso() {
		return this.gruLlaveAcceso;
	}

	public void setGruLlaveAcceso(String gruLlaveAcceso) {
		this.gruLlaveAcceso = gruLlaveAcceso;
	}


	@Column(name="GRU_ESTADO_REGISTRO", nullable=false, length=1)
	public String getGruEstadoRegistro() {
		return this.gruEstadoRegistro;
	}

	public void setGruEstadoRegistro(String gruEstadoRegistro) {
		this.gruEstadoRegistro = gruEstadoRegistro;
	}

	@OneToMany(fetch=FetchType.LAZY, mappedBy="segGrupoOpcion")
	public Set<SegPermiso> getSegPermisos() {
		return this.segPermisos;
	}

	public void setSegPermisos(Set<SegPermiso> segPermisos) {
		this.segPermisos = segPermisos;
	}

	@OneToMany(fetch=FetchType.LAZY, mappedBy="segGrupoOpcion")
	public Set<SegOpcion> getSegOpcions() {
		return this.segOpcions;
	}

	public void setSegOpcions(Set<SegOpcion> segOpcions) {
		this.segOpcions = segOpcions;
	}

	@OneToMany(fetch=FetchType.LAZY, mappedBy="segGrupoOpcion")
	public Set<SegGrupoOpcion> getSegGrupoOpcions() {
		return this.segGrupoOpcions;
	}

	public void setSegGrupoOpcions(Set<SegGrupoOpcion> segGrupoOpcions) {
		this.segGrupoOpcions = segGrupoOpcions;
	}

	@Column(name="GRU_ICONO", length=200)
	public String getGruIcono() {
		return gruIcono;
	}


	public void setGruIcono(String gruIcono) {
		this.gruIcono = gruIcono;
	}

	


}

