import comidas.*

object patagonia {
	method energiaRevitalizadora() { return 30 }
}

object sierraCordoba {
	method energiaRevitalizadora() { return 70 }
}

object marDelPlata {
	var temporadaAlta=false
	var energia=80
	
	method temporadaAlta(estado) {
		temporadaAlta=estado
		self.energiaXTemporada()
	}
	method temporadaAlta() {
		return temporadaAlta
	}
	
	method energiaXTemporada() {
		if(temporadaAlta) {
			energia=-20
		}
		else {
			energia=80
		}
	}
	method energiaRevitalizadora() {
		self.energiaXTemporada()
		return energia
	}
}

object noroeste {
	var energia=pepita.energia()*0.1
	
	method energiaRevitalizadora() {
		return energia
	}
}
/*
 * Agregar
 * - los objetos que representan a los posibles destinos
 * - la capacidad de Pepita de visitar un destino, modificando su energía.
 */
 
object pepita {
	var energia = 0
	method energia() { return energia }
	method comer(comida, gramos) { energia += comida.energiaPorGramo() * gramos }
	method volarA(destino) {
		energia+=destino.energiaRevitalizadora()
	}
}