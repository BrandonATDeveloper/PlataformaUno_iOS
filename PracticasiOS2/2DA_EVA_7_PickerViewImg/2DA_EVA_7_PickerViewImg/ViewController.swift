//
//  ViewController.swift
//  2DA_EVA_7_PickerViewImg
//
//  Created by  on 16/03/17.
//
// <Juan Chacon Holguin>
// <Plataforma I>
//  Created by  on 16/03/17.

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var aiImg: [UIImage]!
    var arreIni = [0,0,0]
    var arreCod = [2,3,1]
    override func viewDidLoad() {
        super.viewDidLoad()
        aiImg = [UIImage(named: "facebook")!, UIImage(named: "google")!, UIImage(named: "instagram")!, UIImage(named: "pinterest")!, UIImage(named: "twitter-xl")!] //inicializar arreglo de imagenes
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imagen = aiImg[row]
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
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return aiImg.count
    }
    //regresa una vista, las genera, lee el arreglo y los pone en la vista
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }
}
