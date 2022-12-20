package br.com.caelum.vraptor.model;

import javax.persistence.Entity;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Professor extends Model{
	
	@NotEmpty(message="{professor.nome.emBranco}") @Size(min=4, max=10, message="{professor.nome.size}")
	private String nome;
	@NotEmpty(message="{professor.senha.emBranco}") @Size(min=6, max=20, message="{professor.senha.size}")
	private String senha;
	
	
	public String getNome() {
		return nome;
	}
	
	public String getSenha() {
		return senha;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	
}
