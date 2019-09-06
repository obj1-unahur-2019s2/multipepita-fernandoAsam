import comidas.*

object patagonia {
	method energiaRevitalizadora() { return 30 }
}

object sierraCordoba {
	method energiaRevitalizadora() { return 70 }
}

object marDelPlata {
	var property temporadaAlta=false
	var energia=0
	
	method energiaXTemporada() {
		if(temporadaAlta) { energia=-20 }
		else { energia=80 }
	}
	method energiaRevitalizadora() {
		self.energiaXTemporada()
		return energia
	}
}

object noroeste {
	var energia=0
	
	method diezPorcientoEnergiaPepita() {
		energia=pepita.energia()*0.1
	}
	method energiaRevitalizadora() {
		self.diezPorcientoEnergiaPepita()
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