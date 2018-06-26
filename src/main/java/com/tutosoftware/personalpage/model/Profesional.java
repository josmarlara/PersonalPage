package com.tutosoftware.personalpage.model;

import java.util.List;

public class Profesional {
	
	private String posicion;
	private String compania;
	private String tiempo;
	private String ubicacion;
	private List<String> habilidades;
	private List<String> prevTrabajos;
	public String getPosicion() {
		return posicion;
	}
	public void setPosicion(String posicion) {
		this.posicion = posicion;
	}
	public String getCompania() {
		return compania;
	}
	public void setCompania(String compania) {
		this.compania = compania;
	}
	public String getTiempo() {
		return tiempo;
	}
	public void setTiempo(String tiempo) {
		this.tiempo = tiempo;
	}
	public String getUbicacion() {
		return ubicacion;
	}
	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}
	public List<String> getHabilidades() {
		return habilidades;
	}
	public void setHabilidades(List<String> habilidades) {
		this.habilidades = habilidades;
	}
	public List<String> getPrevTrabajos() {
		return prevTrabajos;
	}
	public void setPrevTrabajos(List<String> prevTrabajos) {
		this.prevTrabajos = prevTrabajos;
	}


}
