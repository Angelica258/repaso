package Prueba;

import DAO.ParticipanteDAO;
import DAO.UniversidadDAO;
import modelo.Participante;
import modelo.Universidad;


public class Prueba {
	public static void main(String[] args) {
		
		//se crean los objetos uni y sus atribitos y uniDAO para trabajar los metodos de uni en la base de datos
		//Universidad uni = new Universidad();
		//uni.setNombre("cartagena");;
		//uni.setCiudad("Cucuta");
		
		//UniversidadDAO uniDAO = new UniversidadDAO();
		//uniDAO.insert(uni);
		//System.out.println("se ha insertado: la "+uni.getNombre());
		
		Participante par = new Participante();
		par.setNombre("Diego");
		par.setCorreo("diego@hotmail.com");
		par.setTelefono("321654987");
		par.setClave("1234");
		par.setGenero("M");
		
		
		ParticipanteDAO parDAO = new ParticipanteDAO();
		parDAO.insert(par);
		System.out.println("se ha insertado: la "+par.getNombre());
		
		
		}

		
		
}
