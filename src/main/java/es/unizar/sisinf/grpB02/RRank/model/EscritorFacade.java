package es.unizar.sisinf.grpB02.RRank.model;

import java.sql.SQLException;

public class EscritorFacade {
	//Variables
		PersonaDAO funcionesPersona;
		PersonaVO persona;
		
		public EscritorFacade() {
			funcionesPersona = new PersonaDAO() ;
			persona = new PersonaVO(null, null, null, null, null) ;
		}
		
		//Métodos
		public Boolean DevolverEscritor (String _usuario, String _contraseña) throws SQLException {
			boolean res = false;
			res = funcionesPersona.validarPersona(_usuario, _contraseña);
			if (!res) {
					System.out.println(_usuario + " no es usuario del sistema" + _contraseña);
			}
			return res;
//			 return funcionesPersona.validarPersona(_usuario, _contraseña);
		}
}
