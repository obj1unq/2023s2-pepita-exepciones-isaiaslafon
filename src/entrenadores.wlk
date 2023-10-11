import aves.*
import comidas.*

//Milena es una entrenadora de aves que puede entrenar a varias a la vez. 
//Cuando Milena recibe el mensaje movilizar(distancia), hace que todas sus aves se muevan esa distancia. 
//Se pide:
//* implementar a milena, tener en cuenta que milena no puede movilizar sus aves si alguna de ellas no puede recorrer esa distancia

object milena {
	const aves = #{}
	
	method aves(){
		return aves
	}
	
	method agregar(ave){
		aves.add(ave)
	}
	
	method quitar(ave){
		aves.remove(ave)
	}
	
	method puedeMovilizar(distancia){
		return aves.all({ave => ave.puedeVolar(distancia)})
	}
	
//	method validarMovilizar(distancia) {
//	 	aves.forEach({ave => ave.validarVolar(distancia)})
//	}

	method validarMovilizar(distancia) {
	 	if(not self.puedeMovilizar(distancia)){
	 		self.error("Algún ave no puede volar!!!")
	 	}
	}
	
	method movilizar(distancia){
		self.validarMovilizar(distancia)
		aves.forEach({ ave => ave.volar(distancia) })
	}	
}

object roque {
	var ave = pepita
	var cenas = 0;
	
	method ave(_ave) {
		ave = _ave
		cenas = 0
	}
	
	method alimentar(alimento) {
		ave.comer(alimento)
		cenas = cenas + 1
	}
}