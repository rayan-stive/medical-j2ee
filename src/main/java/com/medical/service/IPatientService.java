package com.medical.service;

import java.util.List;

import com.medical.entites.Consultation;
import com.medical.entites.Medecin;
import com.medical.entites.Patient;

public interface IPatientService {
	public void addPatient(Patient p);
	public List<Patient> listPatient();
	public Patient getPatient(String id);
	public void deletePatient(String id);
	public void updatePatient(Patient p);
	
	
	//Medecin service
	
	public void addMedecin(Medecin m);
	public List<Medecin> listMedecin();
	public List<Medecin> nomMedecin();
	public Medecin getMedecin(String id);
	public void deleteMedecin(String id);
	public void updateMedecin(Medecin m);
	
	//Consultation service
	
	public void addConsultation(Consultation c);
	public List<Consultation> listConsultation();
	public Consultation getConsultation(String idCons);
	public void deleteConsultation(String idCons);
	public void updateConsultation(Consultation c);
	
}
