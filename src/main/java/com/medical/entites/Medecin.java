package com.medical.entites;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Medecin implements Serializable {
	@Id
	private String idMed;
	private String nomMed;
	private String prenomMed;
	private String specialite;
	private String nationalite;
	private String adresse;
	private String telephone;
	private String image;
	
	
	public String getIdMed() {
		return idMed;
	}
	public void setIdMed(String idMed) {
		this.idMed = idMed;
	}
	public String getNomMed() {
		return nomMed;
	}
	public void setNomMed(String nomMed) {
		this.nomMed = nomMed;
	}
	public String getPrenomMed() {
		return prenomMed;
	}
	public void setPrenomMed(String prenomMed) {
		this.prenomMed = prenomMed;
	}
	public String getSpecialite() {
		return specialite;
	}
	public void setSpecialite(String specialite) {
		this.specialite = specialite;
	}
	public String getNationalite() {
		return nationalite;
	}
	public void setNationalite(String nationalite) {
		this.nationalite = nationalite;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Medecin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Medecin(String idMed, String nomMed, String prenomMed, String specialite, String nationalite, String adresse,
			String telephone, String image) {
		super();
		this.idMed = idMed;
		this.nomMed = nomMed;
		this.prenomMed = prenomMed;
		this.specialite = specialite;
		this.nationalite = nationalite;
		this.adresse = adresse;
		this.telephone = telephone;
		this.image = image;
	}
	
	
	
}
