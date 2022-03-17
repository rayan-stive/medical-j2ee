package com.medical.dao;

import com.medical.entites.Consultation;
import com.medical.entites.Medecin;
import com.medical.entites.Patient;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class PatientDAOImpl implements IPatientDAO {
	private Map<String, Patient> patient = new HashMap<String, Patient>();
	private Map<String, Medecin> medecin = new HashMap<String, Medecin>();
	private Map<String, Consultation> consultation = new HashMap<String, Consultation>();
	
	public void addPatient(Patient p) {
		patient.put(p.getId(), p);
	}

	public List<Patient> listPatient() {
		return new ArrayList<Patient>(patient.values());
	}

	public Patient getPatient(String id) {
		return patient.get(id);
	}

	public void deletePatient(String id) {
		patient.remove(id);
		
	}
	
	public void updatePatient(Patient p) {
		patient.put(p.getId(), p);
		
	}

	//Implement DAO Médécin
	
	public void addMedecin(Medecin m) {
		medecin.put(m.getIdMed(), m);
		
	}

	public List<Medecin> listMedecin() {
		return new ArrayList<Medecin>(medecin.values());
	}
	
	public List<Medecin> nomMedecin() {
		return new ArrayList<Medecin>(medecin.values());
	}

	public Medecin getMedecin(String refMed) {
		return medecin.get(refMed);
	}

	public void deleteMedecin(String refMed) {
		medecin.remove(refMed);
		
	}

	public void updateMedecin(Medecin m) {
		medecin.put(m.getIdMed(), m);
		
	}

	//Implement DAO Consultation
	
	public void addConsultation(Consultation c) {
		consultation.put(c.getIdCons(), c);
		
	}


	public List<Consultation> listConsultation() {
		return new ArrayList<Consultation>(consultation.values());
	}

	
	public Consultation getConsultation(String idCons) {
		return consultation.get(idCons);
	}

	public void deleteConsultation(String idCons) {
		consultation.remove(idCons);
		
	}

	public void updateConsultation(Consultation c) {
		consultation.put(c.getIdCons(), c);
		
	}

}
