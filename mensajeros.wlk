object paqueteDeGeorge {
    var estaPago = false
    var destino = puenteDeBrooklyn // esta bien que lo inicialice con uno de los destinos o lo mas correcto seria poner null?

    method estaPago(_estaPago) { // el nombre del parametro esta bien? o deberia poner algo asi como "booleano" 
        estaPago = _estaPago
    }

    method destino(_destino) {
        destino = _destino
    }

    method puedeSerEntregado(mensajero) {
        return estaPago and destino.puedeEntregar(mensajero)
    }
}

object puenteDeBrooklyn {
    method puedeEntregar(mensajero) {
        return mensajero.peso() <= 1000
    }
}

object laMatrix {
    method puedeEntregar(mensajero) {
        return mensajero.puedeHacerLlamada()
    }
}

object jeanGray {
    const peso = 65
    const puedeHacerLLamada = true
    method peso() {
        return peso // tenia pensado poner el peso aca pero preferi guardarlo en una constante por miedo al magic number 
    }

    method puedeHacerLlamada() {
        return puedeHacerLLamada 
    }
}


object neo {
    const peso = 0
    var tieneCredito = false

    method peso() {
        return peso
    }
    method tieneCredito(_tieneCredito) {
        tieneCredito = _tieneCredito
    }
    method puedeHacerLlamada() {
        return tieneCredito
    }


}

object saraConnor {
    var peso = 65 
    var vehiculo = moto
    const puedeHacerLlamada = false

    method peso(_peso) {
        peso = _peso
    }

    method vehiculo(_vehiculo) {
        vehiculo = _vehiculo
    }
    method peso() {
        return peso + vehiculo.peso()
    }
     method puedeHacerLlamada() {
        return puedeHacerLlamada
     }
}
  

object moto {
    method peso() {
        return 100
    }
}

object camion {
    var cantidadDeAcoplados = 0 // por ahora

    method cantidadDeAcoplados(_cantidadDeAcoplados) {
      cantidadDeAcoplados = _cantidadDeAcoplados
    }
    method peso() {
        return 500 + (500 * cantidadDeAcoplados )
    }
}
