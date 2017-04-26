//
//  ViewController.swift
//  EVA_1RA_PRACTICA_3
//
//  Created by BRANDON on 17/02/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var passText: UITextField!
    @IBOutlet weak var lblText: UILabel!
    
    @IBAction func signIn(_ sender: AnyObject) {
        let id = "Brandon"
        let pass = "12345"
        var usr = userText.text
        var password = passText.text
        
        if (id == usr && pass == password) {
            let acMiDialogo = UIAlertController(title:"", message:"Welcome "+id+" Do you want to continue?", preferredStyle: .alert)
            let btnOk = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            let btnNo = UIAlertAction(title: "NO", style: .default, handler: nil)
            acMiDialogo.addAction(btnOk)
            acMiDialogo.addAction(btnNo)
            present(acMiDialogo, animated: true, completion: nil)
            
        }else{
            lblText.text = "Wrong user or password"
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

