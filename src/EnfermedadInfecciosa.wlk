class EnfermedadInfecciosa {
	var celulasQueAmenaza
	var diasInfectando = 0
	
	constructor(celulas) {
		celulasQueAmenaza = celulas
	}
	
	method pasarDia(persona) {
		diasInfectando++
		self.producirEfecto(persona)		
	}
	
	method producirEfecto(persona) {
		persona.aumentarTemperatura(celulasQueAmenaza * 0.001)
	}
	
	method reproducirse() {
		celulasQueAmenaza *= 2
	}
	
	method esAgresiva(persona) {
		return celulasQueAmenaza > persona.celulas() * 0.1
	}
	
	method celulasQueAmenaza() = celulasQueAmenaza
	method diasInfectando() = diasInfectando
}