
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
//rehacer canelones
object canelones {
	var energia=20
	var tieneSalsa=false
	var tieneQueso=false
	
	method ponerSalsa() {
		tieneSalsa=true
	}
	
	method ponerQueso() {
		tieneQueso=true
	}
	
	method sacarSalsa() {
		tieneSalsa=false
	}
		
	method sacarQueso() {
		tieneQueso=false
	}
	
	method energiaPorGramo() {
		energia=20
		if(tieneSalsa) { energia+=5 }
		if(tieneQueso) { energia+=7 }
		return energia
	}
}














