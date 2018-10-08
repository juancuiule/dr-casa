import Persona.*

class Medico inherits Persona {
	
	var dosisQueReceta
	
	constructor(gradosDeTemperatura, unasCelulas, enfermedadesIniciales, dosis) = 
		super(gradosDeTemperatura, unasCelulas, enfermedadesIniciales) {
			dosisQueReceta = dosis
		}

	
	override method contraerEnfermedad(enfermedad) {
		super(enfermedad)
		self.atenderA(self)
	}
	
	method atenderA(persona) {
		persona.tomarMedicamento(dosisQueReceta)
	}
}