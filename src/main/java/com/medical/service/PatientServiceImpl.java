package com.medical.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.medical.dao.IMedecinDAO;
import com.medical.dao.IPatientDAO;
import com.medical.entites.Consultation;
import com.medical.entites.Medecin;
import com.medical.entites.Patient;
@Transactional
public class PatientServiceImpl implements IPatientService{
	private IPatientDAO dao;
	
	public void setDao(IPatientDAO dao) {
		this.dao = dao;
	}

	
	public void addPatient(Patient p) {
		dao.addPatient(p);
		
	}

	public List<Patient> listPatient() {
		return dao.listPatient();
	}

	public Patient getPatient(String id) {
		return dao.getPatient(id);
	}

	public void deletePatient(String id) {
		dao.deletePatient(id);
		
	}

	public void updatePatient(Patient p) {
		dao.updatePatient(p);
		
	}
	
	//Implementation sercice Medecin

	public void addMedecin(Medecin m) {
		dao.addMedecin(m);
		
	}

	
	public List<Medecin> listMedecin() {
		return dao.listMedecin();
	}
	
	public List<Medecin> nomMedecin() {
		return dao.nomMedecin();
	}

	public Medecin getMedecin(String id) {
		return dao.getMedecin(id);
	}

	public void deleteMedecin(String id) {
		dao.deleteMedecin(id);
		
	}

	public void updateMedecin(Medecin m) {
		dao.updateMedecin(m);
		
	}

	//Implement service Consultation
	public void addConsultation(Consultation c) {
		dao.addConsultation(c);
		
	}


	public List<Consultation> listConsultation() {
		return dao.listConsultation();
	}


	public Consultation getConsultation(String idCons) {
		return dao.getConsultation(idCons);
	}


	public void deleteConsultation(String idCons) {
		dao.deleteConsultation(idCons);
		
	}


	public void updateConsultation(Consultation c) {
		dao.updateConsultation(c);
		
	}


}
