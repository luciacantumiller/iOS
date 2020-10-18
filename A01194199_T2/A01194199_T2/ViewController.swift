//  Lucía Cantú-Miller A01194199
//  ViewController.swift
//  A01194199_T2
//
//  Created by martha.salinas on 04/09/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbMessage: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var message: String!
    var color: UIColor!
    var photo: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //When view goes back in msg view
    @IBAction func unwindMessage(segue: UIStoryboardSegue){
        lbMessage.text = message!
    }
    //When view goes back in color view
      @IBAction func unwindColor(segue: UIStoryboardSegue){
        self.view.backgroundColor = color
      }
    //When view goes back in image view
    @IBAction func unwindImage(segue: UIStoryboardSegue){
        img.image = photo!
    }

}

