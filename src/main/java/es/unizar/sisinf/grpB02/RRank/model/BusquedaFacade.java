package es.unizar.sisinf.grpB02.RRank.model;

import java.util.ArrayList;
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
		List<LibroVO> listaLibros = libro.BuscarLibros(consulta);
		
		//BuscarPersonas (escritores)
		PersonaDAO pers = new PersonaDAO();
		Set<PersonaVO> listaEscritores = pers.buscarEscritores(consulta);
		
		// Agregar los resultados a resultList
		resultList.addAll(listaLibros);
		resultList.addAll(listaEscritores);
		return resultList;
	}

}
