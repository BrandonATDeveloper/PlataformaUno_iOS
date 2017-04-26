//
//  ViewController.swift
//  EVA2_2_TABLAS
//
//  Created by BRANDON on 07/03/17.
//  Copyright © 2017 BRANDON. All rights reserved.
///////////////////////////////////////////////////
// EVA2_2_TABLAS ‐ <manejo de tablas y datos>
// written by: <Brandon Aguirre Trejo>
// <13550353>
// <Plataforma I>
// <07/03/17>

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let myData = ["One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten","Eleven","Twelve","Thirdteen","Fourteen","Fifteen","Sixteen","Seventeen","Eigthteen","Nineteen","Twenty"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Funcion
    //Regresa el valor de la tabla en un arreglo. haciendo referencia a la tabla y un valor entero
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    //Funcion
    //los datos de la tabla se despliegan en mensajes accionados por un boton
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = UIAlertController(title: "Tus datos", message: myData[indexPath.row], preferredStyle: .alert)
        let boton = UIAlertAction(title: "OK", style: .default, handler: nil)
        controller.addAction(boton)
        present(controller, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell")
        cell?.textLabel?.text = myData[indexPath.row]
        let imFija = UIImage(named: "star-b")
        let imClick = UIImage(named: "star-p")
        cell?.imageView?.image = imFija
        cell?.imageView?.highlightedImage = imClick
        return cell!
    }


}

