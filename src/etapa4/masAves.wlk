import comidas.*

object pepon {
	var energia=0
	
	method comer(comida, gramos) {
		energia+=(comida.energiaPorGramo()*gramos)/2
	}  // implementar
	method volar(kms) { 
		energia-=(kms/2)+1
	}           // implementar
	method haceLoQueQuieras() { 
		self.comer(sorgo, 20)
		self.comer(alpiste, 50)
		self.volar(1)
		self.volar(1)
	}   
	method energia() {
		return energia
	}
	// implementar
}

// implementar el objeto entero, salvo haceLoQueQuieras que lo damos hecho
// ayuda: conviene ponerle dos atributos
object pipa {
	var kmsAcum=0
	var gramosAcum=0
	
	method comer(comida, gramos) {
		gramosAcum+=gramos
	}
	method volar(kms) {
		kmsAcum+=kms
	}
	method kmsRecorridos() { return kmsAcum }
	method gramosIngeridos() { return gramosAcum }
	
	method haceLoQueQuieras() { }
	// queda asi
	// pregunta: ¿por qué es necesario agregar este método, sin código
	//x q roque se lo pasa al ave q se le da por parametro
}