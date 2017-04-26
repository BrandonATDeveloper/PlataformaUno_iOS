//
//  ViewController.swift
//  2DA_EVA_PRACTICA4
//
//  Created by BRANDON on 03/04/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var imgCarro: UIImageView!
    var arreCar = ["Camaro","Challenger","Corvette","Mustang","R8"]
    var arreMod = ["2010","2011","2012","2013","2014","2015","2016","2017"]
    var arreCol = ["Amarillo","Azul","Rojo","Negro","Verde","Blanco"]
    var def  = [0,0,0]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgCarro.image = UIImage(named: "plate")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(component == 0){
            return arreCar[row]
        }else if (component == 1){
            return arreMod[row]
        }else{
            return arreCol[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(component == 0){
            return arreCar.count
        }else if(component == 1){
            return arreMod.count
        }else{
            return arreCol.count
        }
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        def[component] = row
        let arre1 = def[0]
        let arre2 = def[1]
        let arre3 = def[2]
        let imgName = arreCar[arre1]+""+arreMod[arre2]+""+arreCol[arre3]
        let nameImg = UIImage(named: imgName)
        
        if(nameImg == nil){
            let aviso = UIAlertController(title: "Lo sentimos", message: "Este auto no esta disponible", preferredStyle: .alert)
            let button = UIAlertAction(title: "OK", style: .default, handler: nil)
            aviso.addAction(button)
            present(aviso, animated: true, completion: nil)
        }else {
            imgCarro.image = nameImg
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }

}

