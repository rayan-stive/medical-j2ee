package com.medical.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.medical.entites.Consultation;
import com.medical.service.IPatientService;
import com.medical.service.SingletonService;
import com.opensymphony.xwork2.ActionSupport;

public class ConsultationAction extends ActionSupport{
	public Consultation consultation = new Consultation();
	public List<Consultation> consultations;
	public String idCons;
	public Boolean modifConsultation = false;
	@Autowired
	private IPatientService service=SingletonService.getService();
	
	public String index() {
		consultations=service.listConsultation();
		return SUCCESS;
	}
	
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
	
	public String deleteConsultation() {
		service.deleteConsultation(idCons);
		consultations=service.listConsultation();
		return SUCCESS;
	}
	
	public String editConsultation() {
		modifConsultation=true;
		consultation = service.getConsultation(idCons);
		consultations = service.listConsultation();	
		return SUCCESS;
	}
	
}
