//  ViewController.swift
//  Tarea1
//  Lucía Cantú-Miller A01194199
//  En esta app se convierte de farenheit a celcius
//  utilizando (F - 32) * 5/9 = C

//  Created by invitado on 24/08/20.
//  Copyright © 2020 invitado. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfFarenheit: UITextField!
    @IBOutlet weak var tfCelcius: UITextField!
    @IBOutlet weak var imgTemp: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgTemp.image = UIImage(named: "caliente")
    }
    
    @IBAction func calcula(_ sender: UIButton) {
        if let farenheit = Double(tfFarenheit.text!){
            let celcius = (farenheit - 32)*(5/9)
            tfCelcius.text = String(celcius)
        } else {
            let alerta = UIAlertController(title: "Error", message: "El campo debe de ser numérico.", preferredStyle: .alert)
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alerta.addAction(accion)
            
            present(alerta, animated: true, completion: nil)
        }

    }
    
    @IBAction func quitaTeclado(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
}

