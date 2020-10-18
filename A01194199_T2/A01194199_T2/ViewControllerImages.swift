//
//  ViewControllerImages.swift
//  A01194199_T2
//
//  Created by martha.salinas on 04/09/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

class ViewControllerImages: UIViewController {

    @IBOutlet weak var img1: UIButton!
    @IBOutlet weak var img2: UIButton!
    @IBOutlet weak var img3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaIni = segue.destination as! ViewController
        if (sender as! UIButton) == img1{
             vistaIni.photo = img1.currentBackgroundImage
        }else if(sender as! UIButton) == img2{
             vistaIni.photo = img2.currentBackgroundImage
        }else if(sender as! UIButton) == img3{
             vistaIni.photo = img3.currentBackgroundImage
        }
    }
}
