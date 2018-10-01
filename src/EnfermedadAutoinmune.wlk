class EnfermedadAutoinmune {
	
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
		persona.perderCelulas(celulasQueAmenaza)
	}
	
	method esAgresiva(persona) {
		return diasInfectando > 30	
	}
	
	method celulasQueAmenaza() = celulasQueAmenaza
	method diasInfectando() = diasInfectando
}