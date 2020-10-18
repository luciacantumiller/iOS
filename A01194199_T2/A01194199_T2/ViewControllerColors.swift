//
//  ViewControllerColors.swift
//  A01194199_T2
//
//  Created by martha.salinas on 04/09/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

class ViewControllerColors: UIViewController {

    @IBOutlet weak var rojo: UIButton!
    @IBOutlet weak var amarillo: UIButton!
    @IBOutlet weak var azul: UIButton!
    @IBOutlet weak var verde: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaIni = segue.destination as! ViewController
        if (sender as! UIButton) == rojo{
            vistaIni.color = rojo.backgroundColor!
        }else if(sender as! UIButton) == amarillo{
            vistaIni.color = amarillo.backgroundColor!
        }else if(sender as! UIButton) == azul{
            vistaIni.color = azul.backgroundColor!
        }else if(sender as! UIButton) == verde{
            vistaIni.color = verde.backgroundColor!
        }
    }
}
