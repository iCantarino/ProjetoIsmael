package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.model.Professor;
import br.com.caelum.vraptor.util.Sistema;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;

@Path("index")
@Controller
public class IndexController {
	
	@Inject Result result;
	@Inject Validator validator;
	

	@Get("")
	public void index() {
		
	}
	
	@Post("logando")
	public void logando(Professor professor) {
		boolean professorEncontrado = false;
		
		for (Professor professorAtual : Sistema.professores) {
			if(professorAtual.getNome().equals(professor.getNome()) && professorAtual.getSenha().equals(professor.getSenha())) {
				Sistema.professorUsuario = professorAtual; 
				professorEncontrado = true;
			}
		}
		
		
		
		result.include("professor", professor);
		
		validator.addIf(!professorEncontrado, new SimpleMessage("algo esta errado", "senha ou nome estão incorretos"));
		
		validator.onErrorRedirectTo(this).index();
		
		result.redirectTo(AreaController.class).area();
	}
}
