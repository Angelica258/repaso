<div class="row">
	<h4>ACTUALIZAR DATOS DE UN PARTICIPANTE</br></h4>
	<hr>
	
    	<form action="RePController?action=editar" method="post">
		    	<div>
				        <label>Nombre:</label>
				        <input  required="" type="text" name="nombre" value='<c:out value="${participante.nombre}"></c:out>' >
				    </div><br>
				    <div>
				        <label>Correo:</label>
				        <input  required="" type="text" name="email" value='<c:out value="${participante.correo}"></c:out>' >
				       
				    </div><br>
				    <div>
				        <label>Telefono:</label>
				        <input  required="" type="text" name="telefono" value='<c:out value="${participante.correo}"></c:out>' >
				    </div><br>
				    <div>
				        <label>Clave:</label>
				        <input  required="" type="text" name="clave" value='<c:out value="${participante.clave}"></c:out>' >
				    </div><br>
				          
				    <div >
		                 <label >Genero</label>
		                 <input  required="" type="text" name="sexo" value='<c:out value="${participante.genero}"></c:out>' >
		             </div><br>

		<input type="submit" name="registrar" value="Guardar"> 
		</form>
</div>