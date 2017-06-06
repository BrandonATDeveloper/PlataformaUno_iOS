//
//  ViewController.swift
//  EVA3_5_PERSISTENCIA
//
//  Created by BRANDON on 08/05/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFldDatos: UITextField!
    @IBOutlet weak var lblMostrar: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnGuardar(_ sender: AnyObject) {
        let rutaTemp = NSTemporaryDirectory()
        let rutaTempURL = NSURL(fileURLWithPath: rutaTemp)
        let archivo = rutaTempURL.appendingPathComponent("misdatos.txt")
        do{
             try txtFldDatos.text?.write(to: archivo!, atomically: true, encoding: String.Encoding.utf8)
        }catch _ {
            print("UOPS")
        }
    }
    
    @IBAction func btnLeer(_ sender: AnyObject) {
        let rutaTemp = NSTemporaryDirectory()
        let rutaTempURL = NSURL(fileURLWithPath: rutaTemp)
        let archivo = rutaTempURL.appendingPathComponent("misdatos.txt")
        do{
            try lblMostrar.text = String(contentsOfFile: (archivo?.path)!, encoding: String.Encoding.utf8)
        }catch _ {
            print("UOPS")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

