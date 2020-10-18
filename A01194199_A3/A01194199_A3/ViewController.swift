//
//  ViewController.swift
//  A01194199_A3
//
//  Created by martha.salinas on 14/09/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiFoto: UIImageView!
    @IBOutlet weak var lblRaza: UILabel!
    
    var unPerro : Perro!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiFoto.image = unPerro.foto
        lblRaza.text = unPerro.raza
        
    }


}

