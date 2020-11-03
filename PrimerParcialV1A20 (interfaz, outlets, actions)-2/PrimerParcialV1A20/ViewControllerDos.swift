//
//  ViewControllerDos.swift
//  PrimerParcialV1A20
//
//  Created by Yolanda Martinez on 15/09/20.
//  Copyright © 2020 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerDos: UIViewController {

    // outlet del label 
    @IBOutlet weak var lbNumero: UILabel!
    @IBOutlet weak var mas: UIButton!
    @IBOutlet weak var menos: UIButton!
    
    var numEditar : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbNumero.text = numEditar
    }
    
    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaIni = segue.destination as! ViewController
        var myNum = Int(lbNumero.text!)
        
        if(sender as! UIButton) == mas {
            myNum = myNum! + 1
            lbNumero.text = String(myNum!)
            vistaIni.num = lbNumero.text
        }else if (sender as! UIButton) == menos{
            myNum = myNum! - 1
            lbNumero.text = String(myNum!)
            vistaIni.num = lbNumero.text
        }
    }

}
