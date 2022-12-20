package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.util.Sistema;

@Path("area")
@Controller
public class AreaController {
	
	@Get("")
	public void area() {
		System.out.println("\n\t olá, "  +  Sistema.professorUsuario + "\n");
	}
	
}
