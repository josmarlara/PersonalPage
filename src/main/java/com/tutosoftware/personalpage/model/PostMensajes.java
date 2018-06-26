package com.tutosoftware.personalpage.model;

import java.util.Date;

public class PostMensajes {
	
	private String asunto;
	private Date fechaPost;
	private String mensajePost;
	public String getAsunto() {
		return asunto;
	}
	public void setAsunto(String asunto) {
		this.asunto = asunto;
	}
	public Date getFechaPost() {
		return fechaPost;
	}
	public void setFechaPost(Date fechaPost) {
		this.fechaPost = fechaPost;
	}
	public String getMensajePost() {
		return mensajePost;
	}
	public void setMensajePost(String mensajePost) {
		this.mensajePost = mensajePost;
	}

}
