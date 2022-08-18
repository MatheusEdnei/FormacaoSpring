package br.com.alura.gerenciador.banco;

import java.util.ArrayList;
import java.util.List;

import br.com.alura.gerenciador.model.Empresa;

public class Banco {
	
	private static List<Empresa> lista = new ArrayList<Empresa>();
	
	static {
		Empresa empresa = new Empresa();
		empresa.setNome("Alura");
		
		Empresa empresaDois = new Empresa();
		empresaDois.setNome("Caelum");
		
		lista.add(empresa);
		lista.add(empresaDois);
	}

	public void adiciona(Empresa empresa) {
		Banco.lista.add(empresa);
	}
	
	public List<Empresa> getEmpresas() {
		System.out.println(Banco.lista);
		return Banco.lista;
	}

}
