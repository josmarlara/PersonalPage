package com.tutosoftware.personalpage.model;

import org.hibernate.validator.constraints.NotBlank;

public class Home {
	
	@NotBlank
	private String mensaje;
	 @NotBlank
	private String cita;
	public String getMensaje() {
		return mensaje;
	}
	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}
	public String getCita() {
		return cita;
	}
	public void setCita(String cita) {
		this.cita = cita;
	}

}
