


class Huerta {

    var capacidad

    method esBueno() = capacidad > nivelMinimo.valor()

}


class Mascota {

    var nivelDeSalud

    method esBueno() = nivelDeSalud > 250

}

class Hogar {

    var nivelDeMugre
    const confort

    method esBueno() = nivelDeMugre >= confort / 2 
}

object nivelMinimo {

    var property valor = 30 
}


class Barrio {

    const elementos = []

    method losBuenos() = elementos.filter({a => a.esBueno()})

    method losMalos() = elementos.filter({a => not a.esBueno()})

    method esCopado() = self.losBuenos().size() > self.losMalos().size()
}