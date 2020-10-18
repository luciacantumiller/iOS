//
//  ViewController.swift
//  A01194199_MR
//
//  Created by martha.salinas on 07/09/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    let max = 50.0
    
    @IBOutlet weak var lbTwo: UILabel!
    @IBOutlet weak var lbThree: UILabel!
    @IBOutlet weak var lbFour: UILabel!
    @IBOutlet weak var lbFive: UILabel!
    @IBOutlet weak var lbSix: UILabel!
    @IBOutlet weak var lbSeven: UILabel!
    @IBOutlet weak var lbEight: UILabel!
    @IBOutlet weak var lbNine: UILabel!
    @IBOutlet weak var lbTen: UILabel!
    @IBOutlet weak var lbEleven: UILabel!
    @IBOutlet weak var lbTwelve: UILabel!
    
    @IBOutlet weak var pvTwo: UIProgressView!
    @IBOutlet weak var pvThree: UIProgressView!
    @IBOutlet weak var pvFour: UIProgressView!
    @IBOutlet weak var pvFive: UIProgressView!
    @IBOutlet weak var pvSix: UIProgressView!
    @IBOutlet weak var pvSeven: UIProgressView!
    @IBOutlet weak var pvEight: UIProgressView!
    @IBOutlet weak var pvNine: UIProgressView!
    @IBOutlet weak var pvTen: UIProgressView!
    @IBOutlet weak var pvEleven: UIProgressView!
    @IBOutlet weak var pvTwelve: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func roll(_ sender: Any) {
        let numberOne = arc4random_uniform(6) + 1
            
        let numberTwo = arc4random_uniform(6) + 1
        
        let sum = (numberOne + numberTwo)
        
            
        leftDice.image = UIImage(named: "Dice\(numberOne)")
            
        rightDice.image = UIImage(named: "Dice\(numberTwo)")
        
        switch sum {
        case 2:
          if let text = self.lbTwo.text , var value = Int(text){
                value += 1
                let prog = Double(value) / max
                pvTwo.setProgress(Float(prog), animated: true)
                lbTwo.text = String(value)
            }
        case 3:
            if let text = self.lbThree.text , var value = Int(text){
                value += 1
                let prog = Double(value) / max
                pvThree.setProgress(Float(prog), animated: true)
                lbThree.text = String(value)
            }
        case 4:
           if let text = self.lbFour.text , var value = Int(text){
                value += 1
                let prog = Double(value) / max
                pvFour.setProgress(Float(prog), animated: true)
                lbFour.text = String(value)
           }
        case 5:
            if let text = self.lbFive.text , var value = Int(text){
                value += 1
                let prog = Double(value) / max
                pvFive.setProgress(Float(prog), animated: true)
                lbFive.text = String(value)
            }
        case 6:
           if let text = self.lbSix.text , var value = Int(text){
               value += 1
               let prog = Double(value) / max
               pvSix.setProgress(Float(prog), animated: true)
               lbSix.text = String(value)
           }
        case 7:
            if let text = self.lbSeven.text , var value = Int(text){
                value += 1
                let prog = Double(value) / max
                pvSeven.setProgress(Float(prog), animated: true)
                lbSeven.text = String(value)
            }
        case 8:
            if let text = self.lbEight.text , var value = Int(text){
                value += 1
                let prog = Double(value) / max
                pvEight.setProgress(Float(prog), animated: true)
                lbEight.text = String(value)
            }
        case 9:
            if let text = self.lbNine.text , var value = Int(text){
                value += 1
                let prog = Double(value) / max
                pvNine.setProgress(Float(prog), animated: true)
                lbNine.text = String(value)
            }
        case 10:
            if let text = self.lbTen.text , var value = Int(text){
                value += 1
                let prog = Double(value) / max
                pvTen.setProgress(Float(prog), animated: true)
                lbTen.text = String(value)
            }
        case 11:
            if let text = self.lbEleven.text , var value = Int(text){
                value += 1
                let prog = Double(value) / max
                pvEleven.setProgress(Float(prog), animated: true)
                lbEleven.text = String(value)
            }
        case 12:
            if let text = self.lbTwelve.text , var value = Int(text){
                value += 1
                let prog = Double(value) / max
                pvTwelve.setProgress(Float(prog), animated: true)
                lbTwelve.text = String(value)
            }
        default:
            print("")
        }
    }
    
}

