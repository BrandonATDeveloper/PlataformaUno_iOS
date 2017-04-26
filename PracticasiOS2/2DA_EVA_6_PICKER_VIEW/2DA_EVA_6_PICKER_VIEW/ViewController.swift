//
//  ViewController.swift
//  2DA_EVA_6_PICKER_VIEW
//
//  Created by BRANDON on 16/03/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let asData = ["Lunes","Martes","Miercoles","Jueves","Viernes","Sábado","Domingo"]
    
    let asData2 = ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //titulo del picker view
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
        return asData[row]//fila que se debe refrescar, mostrar el 
        }else{
        return asData2[row]
        }
    }
    //numero de componentes del picker view
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2 //numero de arreglos u orihenes de datos
    }
    //accion del picker view seleccion
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var sMensa: String
        if component == 0{
            sMensa = asData[row]
        }else{
            sMensa = asData2[row]
        }
        let acMostrar = UIAlertController(title: "Picker View", message: sMensa, preferredStyle: .alert)
        let acBoton = UIAlertAction(title: "OK", style: .default, handler: nil)
        acMostrar.addAction(acBoton)
        present(acMostrar, animated: true, completion: nil)
    }
    //
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
        return asData.count
        }else{
        return asData2.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        <#code#>
    }

}

