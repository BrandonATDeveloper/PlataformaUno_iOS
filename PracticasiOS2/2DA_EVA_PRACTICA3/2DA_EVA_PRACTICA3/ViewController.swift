//
//  ViewController.swift
//  2DA_EVA_PRACTICA3
//
//  Created by BRANDON on 28/03/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    let tecMat = ["Estructura de Datos","Prog. Orientada a Objetos","Topicos Avanzados","Redes de Computadora","Conmutación","Administración de Redes","Fundamentos de BD","Taller de BD","Admon de BD"]
    let numSem = ["Semestre 2","Semestre 3","Semestre 5","Semestre 6","Semestre 7","Semestre 8","Semestre 4","Semestre 5","Semestre 6"]
    let img =  ["prog","prog","prog","redes","redes","redes","bd","bd","bd"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = UIAlertController(title: "Materia de:", message: numSem[indexPath.row], preferredStyle: .alert)
        let button = UIAlertAction(title: "OK", style: .default, handler: nil)
        controller.addAction(button)
        present(controller, animated: true, completion: nil)
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tecMat.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
        if (cell == nil){
            cell = UITableViewCell(style: .default, reuseIdentifier: "myCell")
    }
        cell?.textLabel?.text = tecMat[indexPath.row]
        let imgFija = UIImage(named: img[indexPath.row])
        cell?.imageView?.image = imgFija
        return cell!
    }


}

