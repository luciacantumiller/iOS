//
//  ViewController.swift
//  A01194199_T4
//
//  Created by martha.salinas on 04/10/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

protocol protocoloArticulo {
    func agregarArticulo(art: Articulo)
}

class ViewController: UIViewController, UINavigationControllerDelegate {
    var unArticulo : Articulo!
    var editar : Bool!
    @IBOutlet weak var tfID: UITextField!
    @IBOutlet weak var tfDesc: UITextField!
    @IBOutlet weak var tfCant: UITextField!
    
    var delegado : protocoloArticulo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if (editar){
            tfID.text = String(unArticulo.ID)
            tfDesc.text = unArticulo.desc
            tfCant.text = String(unArticulo.cant)
        }
    }

    @IBAction func guardarArticulo(_ sender: UIButton) {
        let articulo = Articulo(ID: Int(tfID.text!)!, desc: tfDesc.text!, cant: Int(tfCant.text!)!)
        delegado?.agregarArticulo(art: articulo)
        navigationController?.popViewController(animated: true)
    }

}

