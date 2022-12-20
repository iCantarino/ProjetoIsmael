package br.com.caelum.vraptor.controller;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.ProfessorDao;
import br.com.caelum.vraptor.model.Professor;
import br.com.caelum.vraptor.util.Sistema;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;

@Path("registro")
@Controller
public class RegisterController {
	
	@Inject Result result;
	@Inject Validator validator;
	@Inject EntityManager em;
	@Inject ProfessorDao ProfessorDao;
	
	@Get("")
	public void register() {
		
	}
	
	@Post("saveUser")
	public void saveUser(@Valid Professor professor, String confirmaSenha) {
		
		boolean isPasswordsEqual = false;
		
		if(confirmaSenha != null){
			isPasswordsEqual = confirmaSenha.equals(professor.getSenha());
		}else {
			isPasswordsEqual = false;
		}
		boolean isProfessorInConflict = false;
		
		for (Professor professorAtual : Sistema.professores) {
			if(professorAtual.getNome().equals(professor.getNome()) || professorAtual.getSenha().equals(professor.getSenha())) {
				isProfessorInConflict = true;
			}
		}
		
		String confirmaSenhaFeedback = confirmaSenha;
		
		if(!isPasswordsEqual) {
			confirmaSenhaFeedback = "";
		}
		
		if(!isProfessorInConflict) {
			result.include("professor", professor);
			result.include("confirmaSenhaResult", confirmaSenhaFeedback);
		}
		
		validator.addIf(!isPasswordsEqual, new SimpleMessage("confirmaSenha", "A confirmação de senha e a senha devem ser iguais e não pode estar vazia"));
		validator.addIf(isProfessorInConflict, new SimpleMessage("conta existente", "senha ou nome já usado"));
		
		validator.onErrorRedirectTo(this).register();
		//salva usuario no banco de dados
		ProfessorDao.insertOrUpdate(professor);
		Sistema.professores.add(professor);
		
		//direciona para o dashboard
		result.redirectTo(AreaController.class).area();
	}
	
}
