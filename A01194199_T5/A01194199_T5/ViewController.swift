//
//  ViewController.swift
//  A01194199_T5
//
//  Created by martha.salinas on 16/10/20.
//  Copyright © 2020 luciacantumiller. All rights reserved.
//

import UIKit

class Slot {
    var img: UIImage
    
    init(img: UIImage){
        self.img = img
    }
}

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var lblYouWon: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var slots = [
      Slot(img: UIImage(named: "Apple")!),
      Slot(img: UIImage(named: "bar")!),
      Slot(img: UIImage(named: "cherry")!),
      Slot(img: UIImage(named: "corazones")!),
      Slot(img: UIImage(named: "crown")!),
      Slot(img: UIImage(named: "lemon")!),
      Slot(img: UIImage(named: "seven")!),
      Slot(img: UIImage(named: "treboles")!),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblYouWon.isHidden = true
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
         return 3
     }
     
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return slots.count
      }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 80
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
          
          let imgView = UIImageView(frame: CGRect(x: 0, y: 0, width: 52, height: 52))
          
          imgView.image = slots[row].img
          
    
          view.addSubview(imgView)
          
          return view

      }
    
    //MARK - Roll picker view
    @IBAction func btnGo(_ sender: UIButton) {
        
        let first = Int.random(in: 0...slots.count)
         let second = Int.random(in: 0...slots.count)
         let third = Int.random(in: 0...slots.count)
        
        pickerView.selectRow(first, inComponent: 0, animated: true)
          pickerView.selectRow(second, inComponent: 1, animated: true)
          pickerView.selectRow(third, inComponent: 2, animated: true)
        if first == second && second == third {
            self.lblYouWon.isHidden = false
        }
    }
    
    //MARK - Reset picker view
    @IBAction func resetBtn(_ sender: Any) {
        pickerView.selectRow(0, inComponent: 0, animated: true)
        pickerView.selectRow(0, inComponent: 1, animated: true)
        pickerView.selectRow(0, inComponent: 2, animated: true)
                self.lblYouWon.isHidden = true
    }


}

