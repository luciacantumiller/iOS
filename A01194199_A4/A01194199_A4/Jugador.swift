//
//  Jugador.swift
//  A01194199_A4
//
//  Created by martha.salinas on 24/09/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

class Jugador: NSObject {
    
    var nombre : String
    var puntos : Int
    var foto : UIImage!
    
    init(nombre : String, puntos : Int, foto : UIImage!) {
        self.nombre = nombre
        self.puntos = puntos
        self.foto = foto
    }

}
