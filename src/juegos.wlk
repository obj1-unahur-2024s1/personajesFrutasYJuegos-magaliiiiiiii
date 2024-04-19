object voley {
	var cantMinutos=0 
	
	method cantidadDeMinutos(minutos){ cantMinutos= minutos}
	method cantidadDeMnutos(){cantMinutos}
	//este va a ser el metodo polimorfico
	
	method energia()= 2* cantMinutos *-1  // aca devuelve numero negativo 
	//tambien se podrria hacer como 2* self.cantidadDeMnutos()*-1
	
	
}

object pelota{  // aca la energia siempre disminuye
	var energia =-10
	
	method energiaQueResta()= energia
	method energia(unValor) { energia = unValor.abs()* -1 }  // setter valor aboluto multiplicado 
													//por -1 siempre da negativ
												// 
}

object aerobic{
	var temperatura= 18 
	
	method temperatura() = temperatura
	method temperaturaActual(unValor) {temperatura= unValor}
	
	method energia()=temperatura*0.5
	
}

object basquet {
	
	method energia()=-8
}
