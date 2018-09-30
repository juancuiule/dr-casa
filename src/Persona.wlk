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
		enfermedades.forEach({enfermedad => enfermedad.pasarDia(self)})
	}
	
	method aumentarTemperatura(grados) {
		temperatura = 45.min(temperatura + grados)
	}
	
	method perderCelulas(cantidad) {
		celulas -= cantidad
	}
	
	method celulas() = celulas
	method enfermedades() = enfermedades
}