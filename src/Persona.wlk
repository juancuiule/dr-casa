import EnfermedadAutoinmune.*
import EnfermedadInfecciosa.*

class Persona {

	var enfermedades
	var temperatura
	var celulas

	constructor(gradosDeTemperatura, unasCelulas, enfermedadesIniciales) {
		temperatura = gradosDeTemperatura
		celulas = unasCelulas
		enfermedades = enfermedadesIniciales
	}

	method contraerEnfermedad(enfermedad) {
		enfermedades.add(enfermedad)
	}

	method pasarDia() {
		enfermedades.forEach({ enfermedad => enfermedad.pasarDia(self)})
	}

	method aumentarTemperatura(grados) {
		temperatura = 45.min(temperatura + grados)
	}

	method enfermedadesAgresivas() {
		return enfermedades.filter({ enfermedad => enfermedad.esAgresiva(self) })
	}

	method celulasAfectadasPorEnfermedadesAgresivas() {
		return self.enfermedadesAgresivas().sum({ enfermedad => enfermedad.celulasQueAmenaza() })
	}

	method enfermedadMasDura() {
		return enfermedades.max({ enfermedad => enfermedad.celulasQueAmenaza() })}

	method perderCelulas(cantidad) {
		celulas -= cantidad
	}
	
	method tomarMedicamento(dosis) {
	  	enfermedades.forEach({enfermedad => enfermedad.atenuarse(dosis * 15)})
	  }

	method celulas() = celulas

	method enfermedades() = enfermedades
	
	method temperatura(grados) { temperatura = grados }

}