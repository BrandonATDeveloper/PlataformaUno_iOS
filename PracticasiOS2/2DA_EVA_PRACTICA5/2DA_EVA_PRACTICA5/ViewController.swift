//
//  ViewController.swift
//  2DA_EVA_PRACTICA5
//
//  Created by administrador on 06/04/17.
//  Copyright © 2017 administrador. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var num = ["0","1","2","3","4","5","6","7","8","9"]
    var def = [0,0,0]
    var contra = [2,3,4]
    var usua = ""
    var usr = "brandon"

    override func viewDidLoad() {
        super.viewDidLoad()
        lblUsuario.text = usua
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var lblUsuario: UITextField!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return num[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return num.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let usu = lblUsuario.text
        def[component] = row
        if (def == contra && usu == usr) {
            let acShow = UIAlertController(title: "Success", message: "", preferredStyle: .alert)
            let acButton = UIAlertAction(title: "OK", style: .default, handler: {action in self.performSegue(withIdentifier: "acceso", sender: self)})
            acShow.addAction(acButton)
            present(acShow, animated: true, completion: nil)
        }else{
            print("prueb")
        }


    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }
    
    

}

