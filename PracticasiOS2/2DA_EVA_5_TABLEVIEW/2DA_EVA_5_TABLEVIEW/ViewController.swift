//
//  ViewController.swift
//  2DA_EVA_5_TABLEVIEW
//
//  Created by BRANDON on 14/03/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let myData = ["Cafe Loils","Cafe Lore","Confessional","Homei","Posatelier","Waffle Wolf"]
    
    let myUbi = ["New York","Chihuahua","Cancun","Asgard","KitKat","Tangamandapio"]
    
    
    let myResr = ["cafeloisl","cafelore","confessional","homei","posatelier","wafflewolf"]
    
    
    
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
    //reusa la celda y rellena los datos
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! TableViewCellMy
        
        cell.lblName.text = myData[indexPath.row]
        cell.lblUbi.text = myUbi[indexPath.row]
        cell.lblDes.text = "Far far away..."
        let img = UIImage(named: myResr[indexPath.row])
        cell.imgImage.image = img
        return cell
    }
    //
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let compartirAct = UITableViewRowAction(style: .default, title: "Compartir") { (compartirAct, indexPath) in
            let myText = "Vine a comer en " + self.myData[indexPath.row]
            let myImage = UIImage(named: self.myResr[indexPath.row])
            let actController = UIActivityViewController(activityItems: [myText, myImage!], applicationActivities: nil)
            self.present(actController, animated: true, completion: nil)
        }
        return[compartirAct]
    }
    //
    /*func comparteRest(action: UITableViewRowAction, indexPath: NSIndexPath) -> Void {
     let myText = "Vine a comer en " + myData[indexPath.row]
     let myImage = UIImage(named: myResr[indexPath.row])
     let actController = UIActivityViewController(activityItems: [myText, myImage!], applicationActivities: nil)
     present(actController, animated: true, completion: nil)
     }*/
    
    
}


