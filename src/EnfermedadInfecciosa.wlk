import Enfermedad.Enfermedad

class EnfermedadInfecciosa inherits Enfermedad {
	override method producirEfecto(persona) {
		persona.aumentarTemperatura(celulasQueAmenaza * 0.001)
	}
	
	method reproducirse() {
		celulasQueAmenaza *= 2
	}
	
	method esAgresiva(persona) {
		return celulasQueAmenaza > persona.celulas() * 0.1
	}
}