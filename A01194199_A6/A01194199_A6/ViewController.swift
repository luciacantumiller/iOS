//
//  ViewController.swift
//  A01194199_A6
//
//  Created by martha.salinas on 08/10/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var scBGColor: UISegmentedControl!
    @IBOutlet weak var sVol: UISlider!
    @IBOutlet weak var sSound: UISwitch!
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        tfName.delegate = self
        tfName.text = defaults.string(forKey: "nombre")
        scBGColor.selectedSegmentIndex = defaults.integer(forKey: "fondo")
        changeBackground(color: defaults.integer(forKey: "fondo"))
        scBGColor.setEnabled(true, forSegmentAt: defaults.integer(forKey: "fondo"))
        sVol.setValue(defaults.float(forKey: "volumen"), animated: true)
        sSound.setOn(defaults.bool(forKey: "sonido"), animated: true)
    }
    
    @IBAction func editoNombre(_ sender: UITextField) {
        defaults.setValue(tfName.text, forKey:"nombre")
    }
    
    @IBAction func changedColor(_ sender: UISegmentedControl) {
        defaults.setValue(sender.selectedSegmentIndex, forKey:"fondo")
        changeBackground(color: sender.selectedSegmentIndex)
    }
    
    @IBAction func changedVolume(_ sender: UISlider) {
        defaults.setValue(sender.value, forKey:"volumen")
    }
    
    @IBAction func changedSonido(_ sender: UISwitch) {
        defaults.setValue(sender.isOn, forKey: "sonido")
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        defaults.setValue(tfName.text, forKey:"nombre")
    }

    func changeBackground(color: Int){
        switch color {
            case 0:
                self.view.backgroundColor = UIColor.systemGreen
                break;
            case 1:
                self.view.backgroundColor = UIColor.systemYellow
                break;
            case 2:
                self.view.backgroundColor = UIColor.systemBlue
                break;
            default:
                break;
        }
    }


}

