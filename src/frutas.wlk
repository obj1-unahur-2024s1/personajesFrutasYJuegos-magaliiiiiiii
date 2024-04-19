object manzana {
	var madura=false
	
	method madura()=madura
	// para que funcione el polimorfismo
	method energia()= if(madura){14} else{17} //expresion ternaria
	method madurar(){madura=true} //metodo cambia el estado
	
	
}

object mandarina{
	
	var peso=100    // gramos
	
	method peso(){return peso}  // 
	method peso(gramo) {peso=gramo}
	
	// para que funcione el polimorfismo
	method energia()= 2*peso/10   /// dos unidades de energia por cada 10 gr
	method calmaElHambre() { return true}   // para que tenga hambre tiene que estar en false la calma
}

object banana{
	
	// para que funcione el polimorfismo
	method energia()=5
	method calmaElHambre() { return true}
}

object agua{
	
	// para que funcione el polimorfismo
	method energia()=0
	method calmaElHambre() { return false}
}
