package com.tutosoftware.personalpage.model;

public class Educacion {
	
	private String nivelEducativo;
	private String universidad;
	private String licenciatura;
	private String especializacion;
	private Integer year;
	public String getNivelEducativo() {
		return nivelEducativo;
	}
	public void setNivelEducativo(String nivelEducativo) {
		this.nivelEducativo = nivelEducativo;
	}
	public String getUniversidad() {
		return universidad;
	}
	public void setUniversidad(String universidad) {
		this.universidad = universidad;
	}
	public String getLicenciatura() {
		return licenciatura;
	}
	public void setLicenciatura(String licenciatura) {
		this.licenciatura = licenciatura;
	}
	public String getEspecializacion() {
		return especializacion;
	}
	public void setEspecializacion(String especializacion) {
		this.especializacion = especializacion;
	}
	public Integer getYear() {
		return year;
	}
	public void setYear(Integer year) {
		this.year = year;
	}

}
