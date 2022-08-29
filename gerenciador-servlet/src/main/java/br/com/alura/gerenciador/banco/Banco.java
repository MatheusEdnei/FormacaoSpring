package br.com.alura.gerenciador.banco;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import br.com.alura.gerenciador.model.Empresa;

public class Banco {
	
	private static List<Empresa> lista = new ArrayList<Empresa>();
	private static Integer chaveSequencial = 1;
	
	static {
		Empresa empresa = new Empresa();
		empresa.setId(Banco.chaveSequencial++);
		empresa.setNome("Alura");
		
		Empresa empresaDois = new Empresa();
		empresaDois.setId(Banco.chaveSequencial++);
		empresaDois.setNome("Caelum");
		
		lista.add(empresa);
		lista.add(empresaDois);
	}

	public void adiciona(Empresa empresa) {
		empresa.setId(Banco.chaveSequencial++);
		Banco.lista.add(empresa);
	}
	
	public List<Empresa> getEmpresas() {
		return Banco.lista;
	}
	
	public void removeEmpresas(Integer id) {
		
		Iterator<Empresa> it = lista.iterator();
		
		while(it.hasNext()) {
			Empresa empresa = it.next();
			
			if(empresa.getId() == id) {
				it.remove();
			}
		}
		
	}

	public Empresa buscaEmpresaPeloId(Integer id) {
		for (Empresa empresa : lista) {
			if(empresa.getId() == id) {
				return empresa;
			}
		}
		
		return null;
	}

}
