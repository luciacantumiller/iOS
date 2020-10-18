//
//  Jugador.swift
//  A01194199_A5
//
//  Created by user181014 on 9/28/20.
//  Copyright © 2020 user181014. All rights reserved.
//

import UIKit

class Jugador: NSObject {

    var nombre : String
    var tipo : String
    var puntos : Int
    var foto : UIImage!
    
    init(nombre : String, tipo : String, puntos : Int, foto : UIImage!) {
        self.nombre = nombre
        self.tipo = tipo
        self.puntos = puntos
        self.foto = foto
    }

}
