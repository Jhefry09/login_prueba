package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import entidad.administradores;
import utils.MySQLDBConexion;

public class ModelAdministrador {
public administradores IniciarSesion(String usuario, String clave) {
	administradores admin = null;
	try {
		Connection cn = MySQLDBConexion.getConexion();
		String sql = "SELECT * FROM administradores WHERE usuario_admin=? AND clave_admin=?";
		PreparedStatement ps = cn.prepareStatement(sql);
		ps.setString(1, usuario);
		ps.setString(2, clave);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			admin = new administradores();
			admin.setId_admin(rs.getInt("id_admin"));
			admin.setNombre_admin(rs.getString("nombre_admin"));
			admin.setApellidos_admin(rs.getString("apellidos_admin"));
			admin.setUsuario_admin(rs.getString("usuario_admin"));
			admin.setClave_admin(rs.getString("clave_admin"));
		}
		rs.close();
		ps.close();
		cn.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return admin;
}}
