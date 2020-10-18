//
//  ViewController.swift
//  A01194199_A4
//
//  Created by martha.salinas on 24/09/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var unJugador : Jugador!

    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbPuntos: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Detalle jugador"
        imgFoto.image = unJugador.foto
        lbNombre.text = unJugador.nombre
        lbPuntos.text = String(unJugador.puntos)
    }


}

