package co.edu.usbcali.mathusb.modelo.dto;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.Serializable;

import java.sql.*;

import java.util.Date;


/**
*
* @author Zathura Code Generator http://code.google.com/p/zathura
* www.zathuracode.org
*
*/
//imagenes
public class PreguntaDTO implements Serializable {
    private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(PreguntaDTO.class);
    private String descripcionPregunta;
    private Long pregId;
    private Long temaId_Tema;    
    private String temaString;
    private String perteneceAEvaluacion;
    private String tipoRespuesta;    
	private String descripcionRespuestaCorrecta;
	private String descripcionRespuesta1;
	private String descripcionRespuesta2;
	private String descripcionRespuesta3;
	private String descripcionRespuesta4;
    private boolean perteneceALaEvaluacion;
    

    public String getDescripcionPregunta() {
        return descripcionPregunta;
    }

    public void setDescripcionPregunta(String descripcionPregunta) {
        this.descripcionPregunta = descripcionPregunta;
    }

    public Long getPregId() {
        return pregId;
    }

    public void setPregId(Long pregId) {
        this.pregId = pregId;
    }

    public Long getTemaId_Tema() {
        return temaId_Tema;
    }

    public void setTemaId_Tema(Long temaId_Tema) {
        this.temaId_Tema = temaId_Tema;
    }

	public String getTemaString() {
		return temaString;
	}

	public void setTemaString(String temaString) {
		this.temaString = temaString;
	}

	public String getPerteneceAEvaluacion() {
		return perteneceAEvaluacion;
	}

	public boolean isPerteneceALaEvaluacion() {
		return perteneceALaEvaluacion;
	}

	public void setPerteneceAEvaluacion(String perteneceAEvaluacion) {
		this.perteneceAEvaluacion = perteneceAEvaluacion;
	}

	public void setPerteneceALaEvaluacion(boolean perteneceALaEvaluacion) {
		this.perteneceALaEvaluacion = perteneceALaEvaluacion;
	}

	public String getTipoRespuesta() {
		return tipoRespuesta;
	}

	public void setTipoRespuesta(String tipoRespuesta) {
		this.tipoRespuesta = tipoRespuesta;
	}

	public String getDescripcionRespuestaCorrecta() {
		return descripcionRespuestaCorrecta;
	}

	public void setDescripcionRespuestaCorrecta(String descripcionRespuestaCorrecta) {
		this.descripcionRespuestaCorrecta = descripcionRespuestaCorrecta;
	}

	public String getDescripcionRespuesta1() {
		return descripcionRespuesta1;
	}

	public void setDescripcionRespuesta1(String descripcionRespuesta1) {
		this.descripcionRespuesta1 = descripcionRespuesta1;
	}

	public String getDescripcionRespuesta2() {
		return descripcionRespuesta2;
	}

	public void setDescripcionRespuesta2(String descripcionRespuesta2) {
		this.descripcionRespuesta2 = descripcionRespuesta2;
	}

	public String getDescripcionRespuesta3() {
		return descripcionRespuesta3;
	}

	public void setDescripcionRespuesta3(String descripcionRespuesta3) {
		this.descripcionRespuesta3 = descripcionRespuesta3;
	}

	public String getDescripcionRespuesta4() {
		return descripcionRespuesta4;
	}

	public void setDescripcionRespuesta4(String descripcionRespuesta4) {
		this.descripcionRespuesta4 = descripcionRespuesta4;
	}
}
