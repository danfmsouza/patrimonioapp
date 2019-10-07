package br.edu.infnet.patrimonioapp.app.controller;

import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.edu.infnet.patrimonioapp.app.model.Patrimonio;
import br.edu.infnet.patrimonioapp.app.model.persistence.PatrimonioDao;



@Service
public class PatrimonioService {
 
	@Autowired
	private PatrimonioDao dao;

	public PatrimonioService() {
	}
	
	@Transactional(propagation = Propagation.NEVER)
	public List<Patrimonio> getPatrimonios() {
		return dao.getAll();
	}

	@Transactional(propagation = Propagation.REQUIRED)
	public void persite(Patrimonio patrimonio) {
		dao.salvar(patrimonio);
	}

	@Transactional(propagation = Propagation.REQUIRED)
	public void update(Patrimonio patrimonio) {
		dao.editar(patrimonio);
	}

	@Transactional(propagation = Propagation.REQUIRED)
	public void delete(Integer id) {
		dao.deletar(id);
	}

	@Transactional(propagation = Propagation.NEVER)
	public Patrimonio getPatrimonio(String id) {
		Objects.requireNonNull(id, "Evitar id nulo");
		
		Integer integer = Integer.valueOf(id);
		return dao.findOne(integer);
	}

	public PatrimonioDao getDao() {
		return dao;
	}

	public void setDao(PatrimonioDao dao) {
		this.dao = dao;
	}

}
