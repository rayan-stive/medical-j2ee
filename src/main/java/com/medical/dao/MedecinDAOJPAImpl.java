package com.medical.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.medical.entites.Medecin;

public class MedecinDAOJPAImpl  implements IMedecinDAO{
	@PersistenceContext
	private EntityManager em;
	
	public void addMedecin(Medecin m) {
		em.persist(m);
		
	}

	public List<Medecin> listMedecin() {
		Query req = em.createQuery("Select m from Medecin m");
		return req.getResultList();
	}


	public Medecin getMedecin(String refMed) {
		return em.find(Medecin.class, refMed) ;
	}


	public void deleteMedecin(String refMed) {
		Medecin m = getMedecin(refMed);
		em.remove(m);	
	}

	public void updateMedecin(Medecin m) {
		em.merge(m);
		
	}

}
