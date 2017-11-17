//
//  ViewController.swift
//  qrTest
//
//  Created by Inés Rojas on 11/16/17.
//  Copyright © 2017 Team. All rights reserved.
//

import UIKit
import QRCode

class ViewController: UIViewController {

    @IBOutlet weak var image_outlet: UIImageView!
    @IBOutlet weak var textOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func generateQR(_ sender: UIButton) {
        // String
        if textOutlet.text != ""{
            var qrCode = QRCode(textOutlet.text!)
            //        qrCode?.image
            qrCode?.size = CGSize(width: 300, height: 300)
            qrCode?.color = CIColor(rgba: "D65442")
            qrCode?.backgroundColor = CIColor(rgba: "FFFFFF")
            let imageView = UIImageView(qrCode: qrCode!)
            
            image_outlet.image = imageView.image

        }
        
    }
    
}

