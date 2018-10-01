class Enfermedad {

	var celulasQueAmenaza
	var diasInfectando = 0

	constructor(celulas) {
		celulasQueAmenaza = celulas
	}

	method pasarDia(persona) {
		diasInfectando++
		self.producirEfecto(persona)
	}

	method atenuarse(celulas) {
		celulasQueAmenaza -= celulas
	}

	method producirEfecto(persona)
	method esAgresiva(persona)

	method celulasQueAmenaza() = celulasQueAmenaza

	method diasInfectando() = diasInfectando

}

