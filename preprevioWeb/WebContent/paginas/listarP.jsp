<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<div class="row">
	<h4>LISTA DE PARTICIPANTES</br></h4>
	<hr>
	<hr>
    	<table id="tabla" class="table table-hover">
    	<jsp:useBean id="parDAO" class="DAO.ParticipanteDAO" scope="request" ></jsp:useBean>
    		<tr>
    			<th>ID</th>
    			<th>NOMBRE</th>
    			<th>CORREO</th>
    			<th>TELEFONO</th>
    			<th>CLAVE</th>
    			<th>GENERO</th>
    			<th>ACCIONES</th>
    		</tr>
    		<c:forEach var="participante" items="${parDAO.list()}">
    		<tr>
    			<td><c:out value="${participante.id}"></c:out></td>
	    		<td><c:out value="${participante.nombre}"></c:out></td>
	    		<td><c:out value="${participante.correo}"></c:out></td>
	    		<td><c:out value="${participante.telefono}"></c:out></td>
	    		<td><c:out value="${participante.clave}"></c:out></td>
	    		<td><c:out value="${participante.genero}"></c:out></td>
	    		<td>
	    			<a href="RePController?action=buscart&id=<c:out value='${participante.id}' />">Editar</a>
	    			<a href="RePController?action=eliminar&id=<c:out value='${participantes.id}'/>">Eliminar</a> 
	
	    		</td>
    		</tr>
    		</c:forEach>
    	</table>
</div>