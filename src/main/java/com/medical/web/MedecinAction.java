package com.medical.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.medical.entites.Medecin;
import com.medical.service.IPatientService;
import com.medical.service.SingletonService;
import com.opensymphony.xwork2.ActionSupport;

public class MedecinAction extends ActionSupport {
	public Medecin medecin = new Medecin();
	public List<Medecin> medecins;
	public String refMed;
	public Boolean modif= false;
	
	
	@Autowired
	private IPatientService service=SingletonService.getService();
	
	public String index() {
		medecins=service.listMedecin();
		return SUCCESS;
	}
	
	public String saveMedecin() {
		if(modif==false)
			service.addMedecin(medecin);
		else {
			service.updateMedecin(medecin);
			modif=false;
			medecin = new Medecin();
		}
		medecins=service.listMedecin();
		return SUCCESS;
	}
	
	public String deleteMedecin() {
		service.deleteMedecin(refMed);
		medecins=service.listMedecin();
		return SUCCESS;
	}
	
	public String editMedecin() {
		modif=true;
		medecin=service.getMedecin(refMed);
		medecins=service.listMedecin();
		return SUCCESS;
	}
}
