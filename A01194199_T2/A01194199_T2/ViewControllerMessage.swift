//
//  ViewControllerMessage.swift
//  A01194199_T2
//
//  Created by martha.salinas on 04/09/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

class ViewControllerMessage: UIViewController {

    @IBOutlet weak var tfMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
            
            if tfMessage.text! == "" {
                let alert = UIAlertController(title: "Error", message: "Favor de ingresar un mensaje!", preferredStyle: .alert)
                let action = UIAlertAction(title:"Ok", style: .cancel, handler: nil)
    
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
                return false
            }
            return true
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         
                let vistaIni = segue.destination as! ViewController
    
                vistaIni.message = tfMessage.text!
        }

}
