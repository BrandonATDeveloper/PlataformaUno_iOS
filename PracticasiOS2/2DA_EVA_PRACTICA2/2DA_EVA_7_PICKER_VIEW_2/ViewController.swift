//
//  ViewController.swift
//  2DA_EVA_7_PICKER_VIEW_2
//
//  Created by BRANDON on 16/03/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var aiImages = [UIImage(named: ""),]
    var arreIni = [0,0,0]
    var arreCod = [1,2,0]
    override func viewDidLoad() {
        super.viewDidLoad()
         aiImages = [UIImage(named: "facebook")!, UIImage(named: "google")!, UIImage(named: "instagram")!, UIImage(named: "pinterest")!, UIImage(named: "twitter-xl")!] //inicializar arreglo de imagenes
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imagen = aiImages[row]
        let imgView = UIImageView(image: imagen)
        return imgView
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        arreIni[component] = row
        if arreIni == arreCod{
            let acShow = UIAlertController(title: "Success", message: "Combinacion Correcta", preferredStyle: .alert)
            let acButton = UIAlertAction(title: "OK", style: .default, handler: nil)
            acShow.addAction(acButton)
            present(acShow, animated: true, completion: nil)
        }
    }
    //numero de componentes del picker view
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3 //numero de arreglos u orihenes de datos
    }
    
    //accion del picker view seleccion
    
    //
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return aiImages.count
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }


}

