//
//  ViewController.swift
//  EVA3_PRACTICA_1_ARCHIVOS
//
//  Created by BRANDON on 17/05/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource{

    var arregloDatos: [String: [String]]!
    var arregloClaves: [String]!
    
    @IBOutlet weak var tblRestaurantes: UITableView!
    
    @IBOutlet weak var txtDatos: UITextField!
    
    @IBAction func btnCapturar(_ sender: AnyObject) {
        let ruta = Bundle.main.path(forResource: "sortedrestaurants", ofType: "plist")
        let sMesa = txtDatos.text
        let capturar = arregloDatos as NSDictionary
        capturar.setValue(sMesa, forKey: arregloClaves[0])
        capturar.write(toFile: ruta!, atomically: true)
        tblRestaurantes.reloadData()
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
        let ruta = Bundle.main.path(forResource: "sortedrestaurants", ofType: "plist")
        print(ruta)
        let diccionarioDatos = NSDictionary(contentsOfFile: ruta!)
        arregloDatos = diccionarioDatos as! [String: [String]]
        arregloClaves = (diccionarioDatos!.allKeys as! [String]).sorted()
        let ruta2 = obtenRuta()
        let diccionario2 = NSMutableDictionary(dictionary: arregloDatos)
        diccionario2.write(to: ruta2, atomically: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as UITableViewCell
        let clave = arregloClaves[indexPath.section]
        let nombresSection = arregloDatos[clave]
        celda.textLabel?.text = nombresSection?[indexPath.row]
        return celda
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arregloClaves.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let clave = arregloClaves[section]
        let nombresSection = arregloDatos[clave]    
        return nombresSection!.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arregloClaves[section]
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return arregloClaves
    }

}

