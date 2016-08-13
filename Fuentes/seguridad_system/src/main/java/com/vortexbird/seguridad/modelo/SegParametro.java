package com.vortexbird.seguridad.modelo;
// Generated 14/11/2012 05:54:52 PM by Zathura powered by Hibernate Tools 3.2.4.GA


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * SegParametro generated by Zathura powered by Hibernate-tools(hbm2java)
 */
@Entity
@Table(name="SEG_PARAMETRO"
,schema="PUBLIC"
		)
public class SegParametro  implements java.io.Serializable {


	private Long parCodigo;
	private SegUsuario segUsuario;
	private String parNombre;
	private Double parValorNumerico;
	private String parValorAlfanumerico;
	private Date parValorFecha;
	private String parEstadoRegistro;

	public SegParametro() {
	}


	public SegParametro(Long parCodigo, String parNombre, String parEstadoRegistro) {
		this.parCodigo = parCodigo;
		this.parNombre = parNombre;
		this.parEstadoRegistro = parEstadoRegistro;
	}
	public SegParametro(Long parCodigo, SegUsuario segUsuario, String parNombre, Double parValorNumerico, String parValorAlfanumerico, Date parValorFecha, String parEstadoRegistro) {
		this.parCodigo = parCodigo;
		this.segUsuario = segUsuario;
		this.parNombre = parNombre;
		this.parValorNumerico = parValorNumerico;
		this.parValorAlfanumerico = parValorAlfanumerico;
		this.parValorFecha = parValorFecha;
		this.parEstadoRegistro = parEstadoRegistro;
	}

	@Id
	@SequenceGenerator(name = "seg_parametro_par_codigo_seq", sequenceName = "seg_parametro_par_codigo_seq")
	@GeneratedValue(generator = "seg_parametro_par_codigo_seq", strategy = GenerationType.SEQUENCE)
	@Column(name="PAR_CODIGO", unique=true, nullable=false)
	public Long getParCodigo() {
		return this.parCodigo;
	}

	public void setParCodigo(Long parCodigo) {
		this.parCodigo = parCodigo;
	}

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="MOD_USU_CODIGO")
	public SegUsuario getSegUsuario() {
		return this.segUsuario;
	}

	public void setSegUsuario(SegUsuario segUsuario) {
		this.segUsuario = segUsuario;
	}


	@Column(name="PAR_NOMBRE", nullable=false, length=100)
	public String getParNombre() {
		return this.parNombre;
	}

	public void setParNombre(String parNombre) {
		this.parNombre = parNombre;
	}


	@Column(name="PAR_VALOR_NUMERICO", precision=10, scale=4)
	public Double getParValorNumerico() {
		return this.parValorNumerico;
	}

	public void setParValorNumerico(Double parValorNumerico) {
		this.parValorNumerico = parValorNumerico;
	}


	@Column(name="PAR_VALOR_ALFANUMERICO", length=100)
	public String getParValorAlfanumerico() {
		return this.parValorAlfanumerico;
	}

	public void setParValorAlfanumerico(String parValorAlfanumerico) {
		this.parValorAlfanumerico = parValorAlfanumerico;
	}


	@Column(name="PAR_VALOR_FECHA", length=7)
	public Date getParValorFecha() {
		return this.parValorFecha;
	}

	public void setParValorFecha(Date parValorFecha) {
		this.parValorFecha = parValorFecha;
	}


	@Column(name="PAR_ESTADO_REGISTRO", nullable=false, length=1)
	public String getParEstadoRegistro() {
		return this.parEstadoRegistro;
	}

	public void setParEstadoRegistro(String parEstadoRegistro) {
		this.parEstadoRegistro = parEstadoRegistro;
	}




}

