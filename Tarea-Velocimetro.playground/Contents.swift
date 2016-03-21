//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades.init(velocidadInicial: Velocidades.Apagado)
    }
   
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        let velocidadActual : Velocidades = self.velocidad
        var leyendaVelocidad : String
        switch velocidadActual{
        case Velocidades.Apagado:
            self.velocidad = Velocidades.init(velocidadInicial : Velocidades.VelocidadBaja)
            leyendaVelocidad = "Apagado"
        case Velocidades.VelocidadBaja:
            self.velocidad = Velocidades.init(velocidadInicial : Velocidades.VelocidadMedia)
            leyendaVelocidad = "Velocidad Baja"
        case Velocidades.VelocidadMedia:
            self.velocidad = Velocidades.init(velocidadInicial : Velocidades.VelocidadAlta)
            leyendaVelocidad = "Velocidad Media"
        case Velocidades.VelocidadAlta:
            self.velocidad = Velocidades.init(velocidadInicial : Velocidades.VelocidadMedia)
            leyendaVelocidad = "Velocidad Alta"
        }
        return (velocidadActual.rawValue, leyendaVelocidad)
    }

}

// pruebas de la clase Auto
var auto : Auto = Auto.init()

for i in 1...20{
    let velocidad = auto.cambioDeVelocidad()
    print("\(i). \(velocidad.actual), \(velocidad.velocidadEnCadena)")
}