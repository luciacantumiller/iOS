//
//  Perro.swift
//  A01194199_A3
//
//  Created by martha.salinas on 14/09/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

class Perro: NSObject {
    
    var raza: String
    var foto: UIImage!
    
    init(raza : String, foto : UIImage!) {
        self.raza = raza
        self.foto = foto
    }
}
