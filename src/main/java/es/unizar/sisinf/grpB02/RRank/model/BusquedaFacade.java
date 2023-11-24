package es.unizar.sisinf.grpB02.RRank.model;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class BusquedaFacade {
	
	public BusquedaFacade (){
		//No inicializa nada
	}
	
	public List<Object> listarTodoSinFiltros(String consulta) {
		List<Object> resultList = new ArrayList<>();
		
		//Buscar en las bases de libro, persona
		
		//BuscarLibros
		LibroDAO libro = new LibroDAO();
		List<LibroVO> listaLibros = new ArrayList<>();
//		listaLibros.addAll(libro.BuscarLibros(consulta));
		listaLibros.add(new LibroVO("ISBNFALSO", "TituloArtificial","laodisea.jpeg",0));
		
		//BuscarPersonas (escritores)
		PersonaDAO pers = new PersonaDAO();
		Set<PersonaVO> listaEscritores = new HashSet<>();//
		listaEscritores.addAll(pers.buscarEscritores(consulta));
		listaEscritores.add(new PersonaVO("nombreFalso","passfalsa","correofalso"));
		
		// Agregar los resultados a resultList
		resultList.addAll(listaLibros);
		resultList.addAll(listaEscritores);
		return resultList;
	}

}
