object laMuerte {

	method esAgresiva(persona) {
		return true
	}
	
	method pasarDia(persona) {
		self.producirEfecto(persona)
	}
	
	method producirEfecto(persona) {
		persona.temperatura(0)
	}
	
	method atenuarse(celulas) {}
	
}