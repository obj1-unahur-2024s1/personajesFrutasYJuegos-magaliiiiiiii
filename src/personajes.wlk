
import frutas.*
import juegos.*


object martin {
	var energia=80
	var cantidadActividades=0
	var tieneHambre=false
	var enLaDespensa= agua //se le asigna objeto del otro archivo para que no se rompa el codigo null
	
	
	method estaFeliz()= energia>80
						or (cantidadActividades>=2 and not tieneHambre)

	method comprar(unaFruta){enLaDespensa= unaFruta}
	
	method alimentarse(){
		energia= energia+ enLaDespensa.energia()
		//enLaDespensa=agua  - resolvimos este error por medio de un test
		tieneHambre= not enLaDespensa.calmaElHambre()  //deja de tener hambre hay que negarlo para que tenga hambre
		enLaDespensa=agua
	}						
	///metodos conusltas para armarr los test
	method enLaDespensa()= enLaDespensa
	method energia()= energia
	method tieneHambre()=tieneHambre

/// CON RSPECTO AL DEPORTE
	method hacerDeporte(unDeporte){
		energia= 0. max(energia + unDeporte.energia()  ) // ya se contempla si es poitiva o neg la energia en cada deporte
		cantidadActividades = cantidadActividades -1   // si bsco un max se ecribe un minimo, es al reves de logica
	}
	
}
