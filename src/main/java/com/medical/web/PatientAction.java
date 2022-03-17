package com.medical.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.medical.entites.Consultation;
import com.medical.entites.Medecin;
import com.medical.entites.Patient;
import com.medical.service.SingletonService;
import com.opensymphony.xwork2.ActionSupport;
import com.medical.service.*;

public class PatientAction extends ActionSupport {
	public Patient patient = new Patient();
	public List<Patient> patients;
	public String id;
	public Boolean editMode=false;
	public String idCons;
	public Boolean modifConsultation = false;
	public Consultation consultation = new Consultation();
	public List<Consultation> consultations;
	
	@Autowired
	private IPatientService service=SingletonService.getService();
	
	public String index() {
		patients=service.listPatient();
		return SUCCESS;
	}
	
	public String save() {
		if(editMode==false)
			service.addPatient(patient);
		else {
			service.updatePatient(patient);
			editMode=false;
			patient = new Patient();
		}			
		patients=service.listPatient();
		return SUCCESS;
	}
	
	public String delete() {
		service.deletePatient(id);
		patients=service.listPatient();
		return SUCCESS;
	}
	
	public String edit() {
		editMode = true;
		patient=service.getPatient(id);
		patients=service.listPatient();
		return SUCCESS;
	}
	
	
	//consultation
	public String saveConsultation() {
		if(modifConsultation==false) {
			service.addConsultation(consultation);
		}
		else {
			service.updateConsultation(consultation);
			modifConsultation=false;
			consultation = new Consultation();
		}
		consultations=service.listConsultation();
		return SUCCESS;
	}
	
	
	
	
	
}
