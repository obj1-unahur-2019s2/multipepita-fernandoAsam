import comidas.*

object patagonia() { method energiaOtorgada { return 30 } }
object sierraCordoba() { return 70 }
/*
 * Agregar
 * - los objetos que representan a los posibles destinos
 * - la capacidad de Pepita de visitar un destino, modificando su energía.
 */
 
object pepita {
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method volarA(destino) {
		
	}
}