object galvan {
	var property sueldo = 150000
	var totalCobrado = 0
	var totalDeuda = 0
	var totalDinero = 30000


	method gastar(cuanto) {
		if (cuanto > totalDinero){
			totalDeuda += cuanto - totalDinero
			totalDinero = 0
		}
	}
	
	method cobrarSueldo() {
		totalCobrado += sueldo
		self.gastar(totalDeuda)
		
	}	
	method sueldo() = sueldo
	method totalCobrado() = totalCobrado
	method totalDeuda() = totalDeuda
	method totalDinero() = totalDinero
}
object baigorria {
	var cantidadDeEmpanadasVendidas = 10
	const sueldo = 150 * cantidadDeEmpanadasVendidas
	var totalCobrado = 0
	
	method cobrarSueldo() {totalCobrado += sueldo}
	method sueldo() = sueldo
	method totalCobrado() = totalCobrado
}

object gimenez {
	var fondoParaSueldos = 3000000
	
	method pagarSueldoA(empleado) {
		fondoParaSueldos -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
	
}