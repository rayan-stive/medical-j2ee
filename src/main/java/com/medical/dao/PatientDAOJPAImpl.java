package com.medical.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.medical.entites.Consultation;
import com.medical.entites.Medecin;
import com.medical.entites.Patient;

public class PatientDAOJPAImpl implements IPatientDAO {

	@PersistenceContext 
	private EntityManager em;
	
	public void addPatient(Patient p) {
		em.persist(p);	
	}
	

	public List<Patient> listPatient() {
		Query req = em.createQuery("Select p from Patient p");
		return req.getResultList();
	}

	public Patient getPatient(String id) {
		return em.find(Patient.class, id);
	}


	public void deletePatient(String id) {
		Patient p = getPatient(id);
		em.remove(p);
		
	}

	
	public void updatePatient(Patient p) {
		em.merge(p);
		
	}
	
	//Implemeente DAO JPA Medecin
	
	public void addMedecin(Medecin m) {
		em.persist(m);
	}


	public List<Medecin> listMedecin() {
		Query reqMed = em.createQuery("Select m from Medecin m");
		return reqMed.getResultList();
	}
	
	public List<Medecin> nomMedecin() {
		Query reqMed = em.createQuery("Select nomMed from Medecin m");
		return reqMed.getResultList();
	}


	public Medecin getMedecin(String refMed) {
		return em.find(Medecin.class, refMed);
	}
	
	public void deleteMedecin(String refMed) {
		Medecin m = getMedecin(refMed);
		em.remove(m);
		
	}

	public void updateMedecin(Medecin m) {
		em.merge(m);
		
	}


	//Implement DAO JPA Consultation
	public void addConsultation(Consultation c) {
		em.persist(c);
		
	}


	public List<Consultation> listConsultation() {
		Query reqCons= em.createQuery("Select c from Consultation c");
		return reqCons.getResultList();
	}


	public Consultation getConsultation(String idCons) {
		return em.find(Consultation.class, idCons);
	}


	public void deleteConsultation(String idCons) {
		Consultation c = getConsultation(idCons);
		em.remove(c);
		
	}


	public void updateConsultation(Consultation c) {
		em.merge(c);
		
	}


}
