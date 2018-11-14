package DAO;

import modelo.Universidad;
import util.Conexion;

public class UniversidadDAO extends Conexion<Universidad> implements GenericDao<Universidad>{

	public UniversidadDAO() {
		super (Universidad.class);
	}

}
