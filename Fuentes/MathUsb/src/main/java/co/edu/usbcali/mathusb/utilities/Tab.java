package co.edu.usbcali.mathusb.utilities;

import java.io.Serializable;

import org.primefaces.component.inputtext.InputText;

public class Tab implements Serializable {
	private String titulo;
    private String id;
    private InputText binding;

    public Tab(String title, String id) {
        this.titulo = title;
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getId() {
        return id;
    }
    
    public InputText getBinding() {
        return binding;
    }
}
