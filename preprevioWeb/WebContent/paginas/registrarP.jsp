<div class="row" id="formulario">
    	<h4>REGISTRAR NUEVO PARTICIPANTE</br></h4>
		<hr>
    	<form action="RePController?action=register" method="post" >
    	
    		<div>
		        <label>Nombre:</label>
		        <input  required="" type="text" name="nombre" />
		    </div><br>
		    <div>
		        <label>Correo:</label>
		        <input  required="" type="text" name="email" />
		    </div><br>
		    <div>
		        <label>Telefono:</label>
		        <input  required="" type="text" name="telefono" />
		    </div><br>
		    <div>
		        <label>Clave:</label>
		        <input  required="" type="text" name="clave" />
		    </div><br>
		          
		    <div >
                 <label >Genero</label>
                 <input  required="" type="text" name="sexo" />
             </div><br>
		    <div class="button">
		        <button required="" class="btn btn-info"  type="submit">Registrar </button>
		        <button required="" class="btn btn-info" data-seleccion="index"  type="reset">Cancelar</button>
		    </div>
		</form>
</div>
