//
//  ViewController.swift
//  EVA3_6_PERSISTENCIA_2
//
//  Created by BRANDON on 09/05/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var misSliders: [UISlider]!
    @IBOutlet weak var lblInfo: UILabel!
    @IBOutlet weak var txtVwDatos: UITextView!
    
    @IBAction func btnGuardar(_ sender: AnyObject) {
        //Obtener la ruta del directorio donde guardaremos
        let tempDir = NSTemporaryDirectory()
        //Obtener la URL
        let tempDirURL = NSURL(fileURLWithPath: tempDir)
        //Nombre del archivo
        let archivo = tempDirURL.appendingPathComponent("misdatos.txt")
        let arreglo = (misSliders as NSArray).value(forKey: "value") as! NSArray
        arreglo.write(to: archivo!, atomically: true)//Guardar
    }
    
    @IBAction func btnMostrar(_ sender: AnyObject) {
        //Obtener la ruta del directorio donde guardaremos
        let tempDir = NSTemporaryDirectory()
        //Obtener la URL
        let tempDirURL = NSURL(fileURLWithPath: tempDir)
        //Nombre del archivo
        let archivo = tempDirURL.appendingPathComponent("misdatos.txt")
        if(FileManager.default.fileExists(atPath: (archivo?.path)!)){
            if let arreglo = NSArray.init(contentsOf: archivo!) as? [Double]{
                var cade = " "
                for i in 0..<arreglo.count {
                    cade = cade + "\(arreglo[i])" + "\n"
                }
                txtVwDatos.text = cade
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

