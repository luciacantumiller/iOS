//
//  Jugador.swift
//  A01194199_A2
//
//  Created by user181014 on 9/7/20.
//  Copyright © 2020 user181014. All rights reserved.
//

import UIKit

class Jugador: NSObject {
    
    var nombre: String
    var puntos: Int
    var foto: UIImage!
    
    init(nombre : String, puntos : Int, foto: UIImage!) {
        self.nombre = nombre
        self.puntos = puntos
        self.foto = foto
    }
    
    
}
