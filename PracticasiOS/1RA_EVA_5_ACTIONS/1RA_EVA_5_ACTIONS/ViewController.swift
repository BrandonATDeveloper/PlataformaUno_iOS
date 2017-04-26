//
//  ViewController.swift
//  1RA_EVA_5_ACTIONS
//
//  Created by BRANDON on 07/02/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFldMessage: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    @IBAction func myTouch(_ sender: AnyObject) {
        var sMessage = textFldMessage.text
        lblMessage.text = sMessage
        
        let acMiDialogo = UIAlertController(title:"HOLA MUNDO", message:sMessage, preferredStyle: .alert)
        let btnOk = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        acMiDialogo.addAction(btnOk)
        present(acMiDialogo, animated: true, completion: nil)
        textFldMessage.text = " "
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

