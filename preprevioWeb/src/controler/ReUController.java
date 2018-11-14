package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UniversidadDAO;
import modelo.Universidad;



/**
 * Servlet implementation class ReUController
 */
@WebServlet("/ReUController")
public class ReUController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet() 
     */
    public ReUController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		String nombre = request.getParameter("nombre");
		String ciudad = request.getParameter("ciudad");
		
		Universidad uni = new Universidad();
		
		uni.setNombre(nombre);
		uni.setCiudad(ciudad);
				
		UniversidadDAO uniDAO = new UniversidadDAO();

		String sw = uniDAO.insert(uni);
		   if(sw!=null){
			   System.out.println(sw);
		}else{
		    System.out.println("errorrrrrr");
		   }
		
		
	}

}
