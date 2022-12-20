package br.com.caelum.vraptor.dao;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.caelum.vraptor.model.Professor;

public class ProfessorDao extends DAO<Professor>{
	
	@Inject
	public ProfessorDao(EntityManager em) {
		super(em, Professor.class);
		// TODO Auto-generated constructor stub
	}
	
	@Deprecated public ProfessorDao() {this(null);};

}
