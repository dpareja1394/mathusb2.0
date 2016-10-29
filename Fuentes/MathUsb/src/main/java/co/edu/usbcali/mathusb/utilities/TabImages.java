package co.edu.usbcali.mathusb.utilities;

import java.io.Serializable;

import org.primefaces.component.panel.Panel;
import org.primefaces.model.StreamedContent;

public class TabImages implements Serializable {
	
		
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	///campos nueva
	private String tema;
	private String rutaPregunta;
	private String tipoRespuesta; 
	private String rutaRespuesta1;
    private String rutaRespuesta2;
	private String rutaRespuesta3;
	private String rutaRespuesta4;
	private String rutaRespuesta5;
	private String titulo;
	private String escoger;
	
	public String getRutaPregunta() {
		return rutaPregunta;
	}
	public void setRutaPregunta(String rutaPregunta) {
		this.rutaPregunta = rutaPregunta;
	}
	public String getTema() {
		return tema;
	}
	public void setTema(String tema) {
		this.tema = tema;
	}
	public String getTipoRespuesta() {
		return tipoRespuesta;
	}
	public void setTipoRespuesta(String tipoRespuesta) {
		this.tipoRespuesta = tipoRespuesta;
	}
	public String getRutaRespuesta1() {
		return rutaRespuesta1;
	}
	public void setRutaRespuesta1(String rutaRespuesta1) {
		this.rutaRespuesta1 = rutaRespuesta1;
	}
	public String getRutaRespuesta2() {
		return rutaRespuesta2;
	}
	public void setRutaRespuesta2(String rutaRespuesta2) {
		this.rutaRespuesta2 = rutaRespuesta2;
	}
	public String getRutaRespuesta3() {
		return rutaRespuesta3;
	}
	public void setRutaRespuesta3(String rutaRespuesta3) {
		this.rutaRespuesta3 = rutaRespuesta3;
	}
	public String getRutaRespuesta4() {
		return rutaRespuesta4;
	}
	public void setRutaRespuesta4(String rutaRespuesta4) {
		this.rutaRespuesta4 = rutaRespuesta4;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getRutaRespuesta5() {
		return rutaRespuesta5;
	}
	public void setRutaRespuesta5(String rutaRespuesta5) {
		this.rutaRespuesta5 = rutaRespuesta5;
	}
	public String getEscoger() {
		return escoger;
	}
	public void setEscoger(String escoger) {
		this.escoger = escoger;
	}
}
