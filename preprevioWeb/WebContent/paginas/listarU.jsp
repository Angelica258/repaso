<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<div class="row">
	<h4>LISTA DE UNIVERSIDADES</br></h4>
	<hr>
    	<table id="tabla" class="table table-hover">
    	<jsp:useBean id="uniDAO" class="DAO.UniversidadDAO" scope="request" ></jsp:useBean>
    		<tr>
    			<th>ID</th>
    			<th>CIUDAD</th>
    			<th>NOMBRE</th>
    			<th>ACCIONES</th>
    		</tr>
    		<c:forEach var="universidad" items="${uniDAO.list()}">
    		<tr>
    			<td><c:out value="${universidad.id}"></c:out></td>
	    		<td><c:out value="${universidad.ciudad}"></c:out></td>
	    		<td><c:out value="${universidad.nombre}"></c:out></td>
	    		<td>
	    			<button  class="btn btn-success" type="submit">Editar</button>
	    			<button  class=" btn btn-danger" type="submit">Eliminar</button>
	    		</td>
    		</tr>
    		</c:forEach>
    	</table>
</div>