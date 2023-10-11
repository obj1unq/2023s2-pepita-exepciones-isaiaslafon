import comidas.*

//Se pide 
//* implementar a milena, 
//* realizar las modificaciones a los objetos ya resueltos para garantizar que 
//un ave no puede volar una distancia mayor a la de su energia. 
//* Tener en cuenta que milena no puede movilizar sus aves si alguna de ellas no puede recorrer esa distancia

object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method energiaNecesaria(distancia){
		return 10 + distancia
	}
	
	method puedeVolar(distancia){
		return self.energiaNecesaria(distancia) <= energia
	}
	
	method validarVolar(distancia) {
	 	if(not self.puedeVolar(distancia)){
	 		self.error("No tiene energia suficiente!")
	 	}
	}
	
	method volar(distancia) {
		self.validarVolar(distancia)
		energia = energia - self.energiaNecesaria(distancia)
	}
		
	method energia() {
		return energia
	}
	
}

object pepon {
	var energia = 30
	
	method energia() {
		return energia
	}
		
	method comer(comida) {
		energia += energia + comida.energiaQueAporta() / 2
	}
	
	method energiaNecesaria(distancia){
		return 20 + 2 * distancia
	}
	
	method puedeVolar(distancia){
		return self.energiaNecesaria(distancia) <= energia
	}
	
	method validarVolar(distancia) {
	 	if(not self.puedeVolar(distancia)){
	 		self.error("No tiene energia suficiente!")
	 	}
	}
		
	method volar(distancia) {
		self.validarVolar(distancia)
		energia = energia - self.energiaNecesaria(distancia)
	}
	
}