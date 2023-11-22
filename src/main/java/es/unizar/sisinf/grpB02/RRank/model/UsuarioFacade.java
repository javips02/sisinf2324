package es.unizar.sisinf.grpB02.RRank.model;

import java.sql.SQLException;

public class UsuarioFacade {
	//Variables
	PersonaDAO funcionesPersona;
	PersonaVO persona;
//	private DataSource dataSource;
	//Constructor
	public UsuarioFacade () {
		funcionesPersona = new PersonaDAO() ;
		persona = new PersonaVO(null, null, null, null, null) ;
	}

	//Métodos
	public Boolean iniciarSesion (String _usuario, String _contraseña) throws SQLException {
		boolean res = false;
		res = funcionesPersona.validarPersona(_usuario, _contraseña);
		if (!res) {
				System.out.println(_usuario + " no es usuario del sistema" + _contraseña);
		}
		return res;
//		 return funcionesPersona.validarPersona(_usuario, _contraseña);
	}

	public Boolean crearCuenta (String _usuario, String _dni, String _nc, String _contraseña, String _correo) {
		try {
			PersonaVO persona = new PersonaVO(_usuario, "prueba", "prueba", _contraseña, _correo);
			return funcionesPersona.crearPersona(persona);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}