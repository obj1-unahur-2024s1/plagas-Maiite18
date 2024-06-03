import plagas.*

class Hogar{
	var property nivelDeMugre = 0
	var property nivelDeConfort= 0
	
	method esBuena() = nivelDeMugre <= nivelDeConfort / 2   
	method sufreAtaqueDe(plaga) {     
		
		nivelDeMugre += plaga.nivelDanio()
		plaga.ataca()
		
	}
	
}

class Huerta{
	var property nivelASuperar = 0 
	var property capacidad = 0 
	
	method esBuena() = capacidad > nivelASuperar
	method sufreAtaqueDe(plaga) {
		
		capacidad -= if(not plaga.transmiteEnfermedades()) plaga.nivelDanio() * 0.1 else (plaga.nivelDanio() * 0.1 + 10) 
		plaga.ataca()
	}
	
}

class Mascota{
	var property salud = 0
	
	method esBuena() = salud > 250
	method sufreAtaqueDe(plaga){
		
		salud -= if(plaga.transmiteEnfermedades()) plaga.nivelDanio() else 0
		plaga.ataca()
	}
}

object barrio {
	const elementos = []
	
	
	method agreagarElemento(elemento) = elementos.add(elemento)
	method esCopado() = elementos.filter({x=>x.esBuena()}).size()  >  elementos.filter({x=> not x.esBuena()}).size() 
	
}
