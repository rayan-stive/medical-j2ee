package com.medical.dao;

import java.util.List;

import com.medical.entites.Medecin;

public interface IMedecinDAO {
	public void addMedecin(Medecin m);
	public List<Medecin> listMedecin();
	public Medecin getMedecin(String refMed);
	public void deleteMedecin(String refMed);
	public void updateMedecin(Medecin m);
}
