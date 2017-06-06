//
//  ViewController.swift
//  EVA3_7_LISTAS_ARCHIVO
//
//  Created by BRANDON on 11/05/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var arregloDatos: [String: [String]]!
    var arregloClaves: [String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let ruta = Bundle.main.path(forResource: "sortednames", ofType: "plist")
        print(ruta)
        let diccionarioDatos = NSDictionary(contentsOfFile: ruta!)
        arregloDatos = diccionarioDatos as! [String: [String]]
        arregloClaves = (diccionarioDatos!.allKeys as! [String]).sorted()
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

