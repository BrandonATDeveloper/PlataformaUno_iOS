//
//  ViewController.swift
//  EVA3_8_AGREGAR_DATOS
//
//  Created by BRANDON on 16/05/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var arreglo: NSMutableArray = []

    @IBOutlet weak var txtFldDatos: UITextField!
    
    @IBOutlet weak var tblVwLista: UITableView!
    
    @IBAction func capturaDatos(_ sender: AnyObject) {
        let ruta = obtenRuta()
        let sCade = txtFldDatos.text
        arreglo.add(sCade)
        arreglo.write(to: ruta, atomically: true)
        tblVwLista.reloadData()
    }
    
    func obtenRuta() -> URL{
        let tempDir = NSTemporaryDirectory()
        let tempDirURL = NSURL(fileURLWithPath: tempDir)
        let tempDirFile = tempDirURL.appendingPathComponent("milista.plist")
        return tempDirFile!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let  ruta = obtenRuta()
        if (FileManager.default.fileExists(atPath: (ruta.path))){
            arreglo = NSMutableArray(contentsOf: ruta)!
        }

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreglo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda")
        celda?.textLabel?.text = arreglo[indexPath.row] as? String
        return celda!
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arreglo.removeObject(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            let ruta = obtenRuta()
            arreglo.write(to: ruta, atomically: true)
            
        
    }
    
}
    
}

