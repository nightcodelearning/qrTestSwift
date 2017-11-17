//
//  radioButtonViewController.swift
//  qrTest
//
//  Created by Inés Rojas on 11/16/17.
//  Copyright © 2017 Team. All rights reserved.
//

import UIKit

class radioButtonViewController: UIViewController {


    
    @IBOutlet weak var labelCaptura: UILabel!
    @IBOutlet var mybuttons: [UIButton]!
    var valorSeleccionado = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in self.mybuttons {
            button.backgroundColor = .clear
            button.layer.cornerRadius = 5
            button.layer.borderWidth = 1
            button.layer.borderColor =  UIColor.black.cgColor
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK actions
    @IBAction func amountPressed(_ sender: UIButton) {
        labelCaptura.text = ""
        valorSeleccionado = ""
        for button in self.mybuttons {
            button.isSelected = false
            button.backgroundColor = UIColor(red:1.0, green:1.0, blue:1.0, alpha:1.0)
        }
            sender.backgroundColor = UIColor(red:0.24, green:0.58, blue:0.97, alpha:1.0)
            //sender.isSelected = true
        valorSeleccionado = (sender.titleLabel?.text)!
    }
    
    @IBAction func accionCapturar(_ sender: UIButton) {
        labelCaptura.text = valorSeleccionado
    }
    
    
    
    

    
    
 

}
