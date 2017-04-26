//
//  ViewController.swift
//  2DA_EVA_3_TABLAS2
//
//  Created by BRANDON on 08/03/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let myData = ["Barrafina","Bourkestreetbakery","Cafe dead end","Cafe loisl","Cafe lore","Confessional","Donostia","Fiveleaves","Forkee restaurant","Grahama Venue Meats","Haighs Chocolate","Homei","Palomino Espresso","Petiteoyster","Posatelier","Royaloak","Teakha","Thaicafe","Traif","Upstate","Wafflewolf"]
    
    let myResr = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant","grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster","posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]
    
    
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
        let imFija = UIImage(named: myResr[indexPath.row])
        cell?.imageView?.image = imFija
        return cell!
    }
    


}

