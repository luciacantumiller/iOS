//
//  SettingsViewController.swift
//  segParc Ago20
//
//  Created by Lucia Cantu-Miller on 29/10/20.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let defaults = UserDefaults.standard

    @IBOutlet weak var tfSettings: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfSettings.text = defaults.string(forKey: "settings")
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        var setting = "-"
        if (tfSettings.text! == ""){
            setting = "-"
        } else{
            setting = tfSettings.text!
        }
        defaults.setValue(setting, forKey:"settings")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
