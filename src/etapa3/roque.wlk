import pepita.*
import comidas.*
import masAves.*

object roque {
	var pupilas = []
	
	method agragarPupilas(unAve) {
		pupilas.add(unAve)
	}
	method entrenar(pupila) {
		pupila.volar(10)
		pupila.comer(alpiste, 300)
		pupila.volar(5)
		pupila.haceLoQueQuieras()
	}
	method entrenarTodas() {
		pupilas.forEach({ ave => self.entrenar(ave) })
	}
	method entrenarFelices() {
		pupilas.filter({e => e.feliz()}).forEach({e=> self.entrenar(e)})
	}
	
	}