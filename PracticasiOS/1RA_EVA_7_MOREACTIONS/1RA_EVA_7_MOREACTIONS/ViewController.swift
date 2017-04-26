//
//  ViewController.swift
//  1RA_EVA_7_MOREACTIONS
//
//  Created by BRANDON on 10/02/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtFieldAge: UITextField!
    @IBOutlet weak var txtFieldName: UITextField!
   
    @IBAction func textFieldDownEditing(_ sender: UITextField){
        sender.resignFirstResponder()
            }
    
    @IBAction func OnTap(_ sender: AnyObject) {
        txtFieldName.resignFirstResponder()
        txtFieldAge.resignFirstResponder()
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

