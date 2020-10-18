//
//  ViewController.swift
//  A01194199_T3
//
//  Created by martha.salinas on 12/09/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var month: UILabel!
    @IBOutlet weak var day: UILabel!
    @IBOutlet weak var weekday: UILabel!
    
    let fecha = Date()
    var fechaNueva = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let formateador = DateFormatter()
        
        formateador.dateFormat = "yyyy"
        year.text = formateador.string(from: Date())
        
        formateador.dateFormat = "MMMM"
        month.text = formateador.string(from: Date())
        
        formateador.dateFormat = "dd"
        day.text = formateador.string(from: Date())
        
        formateador.dateFormat = "EEEE"
        weekday.text = formateador.string(from: Date())
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        leftSwipe.direction = .left
        
        view.addGestureRecognizer(rightSwipe)
        view.addGestureRecognizer(leftSwipe)
    }
    
    @objc func handleSwipe(sender: UISwipeGestureRecognizer){
        if sender.state == .ended{
            let formateador = DateFormatter()
            
            switch sender.direction {
            case .right:
                fechaNueva = fechaNueva.addingTimeInterval(-24*60*60)
                
                formateador.dateFormat = "yyyy"
                year.text = formateador.string(from: fechaNueva)
                
                formateador.dateFormat = "MMMM"
                month.text = formateador.string(from: fechaNueva)
                
                formateador.dateFormat = "dd"
                day.text = formateador.string(from: fechaNueva)
                
                formateador.dateFormat = "EEEE"
                weekday.text = formateador.string(from: fechaNueva)
                
                
            case .left:
                fechaNueva = fechaNueva.addingTimeInterval(24*60*60)
                
                formateador.dateFormat = "yyyy"
                year.text = formateador.string(from: fechaNueva)
                
                formateador.dateFormat = "MMMM"
                month.text = formateador.string(from: fechaNueva)
                
                formateador.dateFormat = "dd"
                day.text = formateador.string(from: fechaNueva)
                
                formateador.dateFormat = "EEEE"
                weekday.text = formateador.string(from: fechaNueva)
            default:
                break
            }
        }
    }

}

