//
//  ViewController.swift
//  segParc Ago20
//
//  Created by Yolanda Martínez Treviño on 28/10/20.
//

import UIKit
protocol protocoloNumero {
    func agregarNumero(num: Int)
}
class ViewController: UIViewController, UINavigationControllerDelegate {
    @IBOutlet weak var lable: UILabel!
    var numero: Int!
    var delegado : protocoloNumero!
    override func viewDidLoad() {
        super.viewDidLoad()
        lable.text = String(numero)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAgregar(_ sender: UIButton) {
        let nuevoNum = numero + 1
        
        delegado?.agregarNumero(num: nuevoNum)
        navigationController?.popViewController(animated: true)
        
    }
    
}
