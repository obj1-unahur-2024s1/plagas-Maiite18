import elementos.*

class Plaga{
	var property poblacion = 0     
	
	method transmiteEnfermedades() = poblacion >= 10   
	method ataca() {
		
		poblacion += poblacion * 0.1
		
	} 
}

class PlagaCucarachas inherits Plaga{
	var property pesoBicho = 0     
	
	method nivelDanio() = poblacion / 2    
	override method transmiteEnfermedades() = poblacion * pesoBicho >= 10    
	override method ataca(){     
		
		super()
		pesoBicho += pesoBicho * 0.2
	}   
}


class PlagaPulgas inherits Plaga{
	
	method nivelDanio() = poblacion*2    
	
}

class PlagaGarrapatas inherits PlagaPulgas{
	
	override method ataca(){
		
		poblacion += poblacion * 0.2
		
	}
	
}

class PlagaMosquitos inherits Plaga{
	
	method nivelDanio() = poblacion      
	override method transmiteEnfermedades() = super() and poblacion % 3 == 0 
	
	
}