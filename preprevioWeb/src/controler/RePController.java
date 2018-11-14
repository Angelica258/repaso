package controler;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import DAO.ParticipanteDAO;

import modelo.Participante;


/**
 * Servlet implementation class RePController
 */
@WebServlet("/RePController")
public class RePController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RePController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ParticipanteDAO parDAO = new ParticipanteDAO();
		System.out.println("entro a listar... metodo");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/paginas/listarP.jsp");
		List<Participante> listaP= parDAO.list();
		request.setAttribute("lista", listaP);
		dispatcher.forward(request, response);
		
	}

	private void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ParticipanteDAO parDAO = new ParticipanteDAO();

		Participante par = parDAO.find(request.getParameter("id"));
		parDAO.delete(par);
		
		System.out.println("entro a eliminar... metodo");
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);

	}

	private void editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ParticipanteDAO parDAO = new ParticipanteDAO();
		Participante par = new Participante();
		
		String nombre = request.getParameter("nombre");
		String correo = request.getParameter("email");
		String telefono = request.getParameter("telefono");
		String clave = request.getParameter("clave");
		String genero = request.getParameter("sexo");
		
		par.setNombre(nombre);
		par.setCorreo(correo);
		par.setTelefono(telefono);
		par.setClave(clave);
		par.setGenero(genero);
		System.out.println("entro a actualizar... metodo");
		parDAO.update(par);
		index(request, response);
		
	}

	private void showEditar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ParticipanteDAO parDAO = new ParticipanteDAO();

		Participante par = parDAO.find((request.getParameter("id")));
		request.setAttribute("participante", par);
		System.out.println("entro a buscar x id... metodo");
		RequestDispatcher dispatcher = request.getRequestDispatcher("paginas/actualizarP.jsp");
		dispatcher.forward(request, response);
		
	}

	
	private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Participante par = new Participante();
		
		String nombre = request.getParameter("nombre");
		String correo = request.getParameter("email");
		String telefono = request.getParameter("telefono");
		String clave = request.getParameter("clave");
		String genero = request.getParameter("sexo");
		
		par.setNombre(nombre);
		par.setCorreo(correo);
		par.setTelefono(telefono);
		par.setClave(clave);
		par.setGenero(genero);
		
		ParticipanteDAO parDAO = new ParticipanteDAO();
		
		String sw  = parDAO.insert(par);
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
		if(sw!=null){
			System.out.println("entro a registrar... metodo");
			   System.out.println("se ha insertado el participante "+sw);
		}else{
			System.out.println("entro a registrar... metodo ... error");
		    System.out.println("errorrrrrr");
		   }
		
	}	
		

	private void nuevo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/paginas/registrarP.jsp");
		dispatcher.forward(request, response);
		System.out.println("entro a nuevo ... metodo");
		
	}

	private void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher= request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
		System.out.println("entro a index... metodo");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		//String nombre = request.getParameter("nombre");
		//String correo = request.getParameter("email");
		//String telefono = request.getParameter("telefono");
		//String clave = request.getParameter("clave");
		//String genero = request.getParameter("sexo");
		
		//Participante par = new Participante();
		
		//par.setNombre(nombre);
		//par.setCorreo(correo);
		//par.setTelefono(telefono);
		//par.setClave(clave);
		//par.setGenero(genero);
		
		
		//ParticipanteDAO parDAO = new ParticipanteDAO();
		
		//String sw  = parDAO.insert(par);
		   //if(sw!=null){
			//   System.out.println(sw);
		//}else{
		  //  System.out.println("errorrrrrr");
		  // }
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("Hola Servlet.. entra al post");
		String action = request.getParameter("action");
		System.out.println(action);
		try {
			switch (action) {
			case "index":
				System.out.println("entro a index");
				index(request, response);
				break;
			case "nuevo":
				System.out.println("entro a nuevo");
				nuevo(request, response);
				break;
			case "register":
				System.out.println("entro a registrar");
				registrar(request, response);
				break;
			case "listar":
				System.out.println("entro a listar");
				listar(request, response);
				break;
			case "buscar&id":
				System.out.println("entro a buscar x id");
				showEditar(request, response);
				break;	
			case "editar":
				System.out.println("entro a editar");
				editar(request, response);
				break;
			case "eliminar":
				System.out.println("entro a eliminar");
				eliminar(request, response);
				break;
			default:
				break;
			}			
		} catch (Exception e) {
			System.out.println("entro al catch.. llore");
			e.getStackTrace();
		}
		
	}

}
