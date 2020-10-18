//  Lucia Cantu-Miller A01194199
//  ViewController.swift
//  A01194199_A1
//
//  Created by user181014 on 8/27/20.
//  Copyright © 2020 user181014. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vBlue: UIView!
    @IBOutlet weak var im: UIImageView!
    
    @IBAction func sBackground(_ sender: UISwitch) {
        
        if(sender.isOn == true){
            UIView.animate(withDuration: 2){
                self.view.backgroundColor = UIColor.lightGray
            }
        } else {
            UIView.animate(withDuration: 2){
                self.view.backgroundColor = UIColor.white
            }
        }
    }
    
    
    @IBAction func sView(_ sender: UISlider) {
        let sVal = CGFloat(sender.value)
        vBlue.frame.origin.y = sVal * -203 + 262
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            }
}

