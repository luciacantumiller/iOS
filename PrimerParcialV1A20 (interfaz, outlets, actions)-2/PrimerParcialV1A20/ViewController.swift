//
//  ViewController.swift
//  PrimerParcialV1A20
//
//  Created by Yolanda Martinez on 15/09/20.
//  Copyright © 2020 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setBlueTap()
    }

    // MARK: - Parte 1 (Rosa)
    
    @IBOutlet weak var lbMensaje: UILabel!
    
    @IBAction func textoIzquierda(_ sender: UIButton) {
        if(lbMensaje.frame.origin.x != 8){
            self.lbMensaje.frame.origin.x -= 320
        }
    }
    
    @IBAction func textoDerecha(_ sender: UIButton) {
        if(lbMensaje.frame.origin.x != 328){
            self.lbMensaje.frame.origin.x += 320
        }
    }
    
    
    // MARK: - Parte 2 (Verde)
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBAction func botonResta(_ sender: UIButton) {
        let progress = progressView.progress
        let newVal = progress - Float(0.1)
        progressView.setProgress(newVal, animated: true)
    }
    
    @IBAction func botonSuma(_ sender: UIButton) {
        let progress = progressView.progress
        let newVal = progress + Float(0.1)
        progressView.setProgress(newVal, animated: true)
    }
    
    
    // MARK: - Parte 3 (Amarilla)
    
    @IBOutlet weak var lbNumero: UILabel!
     var num : String!
     
      @IBAction func unwindEditar(segue : UIStoryboardSegue) {
         lbNumero.text = num
     }
    
    // MARK: - Parte 4 (Azul)
    
    @IBOutlet weak var tfDato1: UITextField!
    @IBOutlet weak var tfDato2: UITextField!
    @IBOutlet weak var tfSuma: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var blue: UIView!
    
    
    @objc func labelTapped(_ sender: UITapGestureRecognizer){
        if(tfDato1.text != nil && tfDato2.text != nil){
            let num1 = Int(tfDato1.text!)
            let num2 = Int(tfDato2.text!)
            let suma = num1! + num2!
            tfSuma.text = String(suma)
            
        }
    }
    
    func setBlueTap(){
        let labelTap = UITapGestureRecognizer(target: self, action: #selector(self.labelTapped(_:)))
        self.label.isUserInteractionEnabled = true
        self.label.addGestureRecognizer(labelTap)
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier == "amarillo"){
            let viewEditar = segue.destination as! ViewControllerDos
            viewEditar.numEditar = lbNumero.text!
        }
    }
}

