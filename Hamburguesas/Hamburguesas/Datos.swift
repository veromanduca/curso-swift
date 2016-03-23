	//
//  Datos.swift
//  Hamburguesas
//
//  Created by Veronica on 3/21/16.
//  Copyright © 2016 Veronica Manduca. All rights reserved.
//

import Foundation
    
class ColeccionDePaises{
    let paises : [String] = ["Uruguay", "Argentina", "Brasil", "Bolivia", "Chile", "Paraguay", "México", "Colombia", "Venezuela", "Puerto Rico", "Ecuador", "Panamá", "Estados Unidos", "Canadá", "Cuba", "República Dominicana", "Alemania", "Francia", "España", "Holanda", "Portugal"]
    
    func obtenPais() -> String {
        return 	(paises[Int(arc4random()) % paises.count])
    }
    
}
        
class ColeccionDeHamburguesa{
    var hamburguesas : [String] = ["Hamburguesa Napolitana", "Hamburguesa Con Queso Cheddar", "Hamburguesa Con Tomate", "Hamburguesa Con Queso Muzzarella", "Hamburguesa Con Ajíes", "Hamburguesa Con Aceitunas", "Hamburguesa Picante", "Hamburguesa Con Jamón", "Hamburguesa Con Papas Fritas", "Hamburguesa Horneada", "Hamburguesa Con Lechuga", "Hamburguesa Pan de sésamo", "Hamburguesa Al plato", "Hamburguesa Al pan", "Hamburguesa de soja", "Hamburguesa sin sal", "Hamburguesa vegetariana", "Hamburguesa doble", "Hamburguesa triple", "Hamburguesa cuádruple", "Hamburguesa de lentejas"]
            
    func obtenHamburguesa() -> String{
        return (hamburguesas[Int(arc4random()) % hamburguesas.count])
    }
}	