package com.medical.service;

import com.medical.dao.PatientDAOImpl;

public class SingletonService {
	private static PatientServiceImpl service;
	
	
	static {
		PatientDAOImpl dao=new PatientDAOImpl();
		service=new PatientServiceImpl();
		service.setDao(dao);

		
	}

	public static PatientServiceImpl getService() {
		return service;
	}
	
	
}
