package com.medical.entites;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Consultation implements Serializable {
	@Id
	private String idCons;
	private String nom;
	private String nomMed;
	private String date;
	private String motif;
	private String depuis;
	private String histoire;
	public String getIdCons() {
		return idCons;
	}
	public void setIdCons(String idCons) {
		this.idCons = idCons;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getNomMed() {
		return nomMed;
	}
	public void setNomMed(String nomMed) {
		this.nomMed = nomMed;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getMotif() {
		return motif;
	}
	public void setMotif(String motif) {
		this.motif = motif;
	}
	public String getDepuis() {
		return depuis;
	}
	public void setDepuis(String depuis) {
		this.depuis = depuis;
	}
	public String getHistoire() {
		return histoire;
	}
	public void setHistoire(String histoire) {
		this.histoire = histoire;
	}
	public Consultation(String idCons, String nom, String nomMed, String date, String motif, String depuis,
			String histoire) {
		super();
		this.idCons = idCons;
		this.nom = nom;
		this.nomMed = nomMed;
		this.date = date;
		this.motif = motif;
		this.depuis = depuis;
		this.histoire = histoire;
	}
	public Consultation() {
		super();
	}
	
	
}
