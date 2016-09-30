package co.edu.usbcali.mathusb.utilities;

import java.io.Serializable;

import org.primefaces.model.StreamedContent;

public class TabImages implements Serializable {
	
		
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	///campos imagenes
	private String tema;
	private String rutaPregunta;
	private String tipoRespuesta; 
	private String rutaRespuestaCorrecta;
	private String rutaRespuesta1;
    private String rutaRespuesta2;
	private String rutaRespuesta3;
    
	
	
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
	public String getRutaRespuestaCorrecta() {
		return rutaRespuestaCorrecta;
	}
	public void setRutaRespuestaCorrecta(String rutaRespuestaCorrecta) {
		this.rutaRespuestaCorrecta = rutaRespuestaCorrecta;
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
	
}
