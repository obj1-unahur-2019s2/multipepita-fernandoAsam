
object alpiste {
	method energiaPorGramo() { 
		return 4
	}
}

object mondongo {
	method energiaPorGramo() { 
		return 100
	}
}

object bigMac {
	method energiaPorGramo() { 
		return 2
	}
}


object alcaucil {
	method energiaPorGramo() {
		return 20
	}
}


object sorgo {
	method energiaPorGramo() {
		return 9
	}
}


//mijo

object mijo {
	var energia = 0
	method mojarse() {
		energia=15
	}
	method secarse() {
		energia=20
	}
	method energiaPorGramo() {
		return energia
	}
}

//canelones con con/sin queso y/o salsa

object canelones {
	var energia=20
	var tieneSalsa=false
	var tieneQueso=false
	
	method conSalsa() {
		if (not tieneSalsa) {
			energia+=5
			tieneSalsa=true
			return "salen con salsa"
			}
			else
				return "no more sauce"
	}
	method conQueso() {
		if (not tieneQueso) {
			energia+=7
			tieneQueso=true
			return "salen con queso"
			}
			else
				return "no more cheese"
	}
	method sacarSalsa() {
		if (tieneSalsa) {
			energia-=5
			tieneSalsa=false
			return "ahi tenés sin salsa!!"
		}
		else
			return "no ves que no tiene salsa!!"
		
	}
	method sacarQueso() {
		if (tieneQueso) {
			energia-=7
			tieneQueso=false
			return "ahi tenés sin queso!!"
		}
		else
			return "no ves que no tiene queso!!"
	}
	method energiaPorGramo() {
		return energia
	}
}















