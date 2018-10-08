import Enfermedad.Enfermedad
class EnfermedadAutoinmune inherits Enfermedad {
	override method producirEfecto(persona) {
		persona.perderCelulas(celulasQueAmenaza)
	}
	
	override method esAgresiva(persona) {
		return diasInfectando > 30	
	}
}