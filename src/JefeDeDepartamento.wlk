import Medico.*

class JefeDeDepartamento inherits Medico {

	var equipo = #{}

	override method atenderA(persona) {
		equipo.anyOne().atenderA(persona)	
	}

	method contratar(medico) {
		equipo.add(medico)
	}

}