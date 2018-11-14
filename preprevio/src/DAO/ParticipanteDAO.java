package DAO;

import modelo.Participante;
import util.Conexion;

public class ParticipanteDAO extends Conexion<Participante> implements GenericDao<Participante>{

	public ParticipanteDAO() {
		super (Participante.class);
	}

}
