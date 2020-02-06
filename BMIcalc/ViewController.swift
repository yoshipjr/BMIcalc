//
//  ViewController.swift
//  BMIcalc
//
//  Created by 北原義久 on 2020/02/06.
//  Copyright © 2020 北原義久. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var weight: UITextField!
    
    @IBOutlet weak var textlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.height.keyboardType = UIKeyboardType.decimalPad
        self.weight.keyboardType = UIKeyboardType.decimalPad
        
    }
    
    @IBAction func button(_ sender: Any) {
        let dheight = Double(height.text!)
        let dweight = Double(weight.text!)
        let dheight2 = dheight! * dheight!
        let bmi = String(dweight! / dheight2)
        
        textlabel.text = ("あなたのBMIは\(bmi)です")
        
    }
}


