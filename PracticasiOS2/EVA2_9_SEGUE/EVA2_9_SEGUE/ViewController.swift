//
//  ViewController.swift
//  EVA2_9_SEGUE
//
//  Created by BRANDON on 23/03/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func alertController(_ sender: AnyObject) {
        let lanzaSegue = UIAlertController(title: "Pantalla", message: "Mostrar pantallas", preferredStyle: .alert)
        
        let actionVerde = UIAlertAction(title: "VERDE", style: .default, handler: {action in self.performSegue(withIdentifier: "verde", sender: self)})
        
        let actionRojo = UIAlertAction(title: "ROJO", style: .default, handler: {action in self.performSegue(withIdentifier: "rojo", sender: self)})
        
        lanzaSegue.addAction(actionVerde)
        lanzaSegue.addAction(actionRojo)
        present(lanzaSegue, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "verde"{
            let miViewController = segue.destination as! VerdeViewController
            miViewController.sTexto = "Hola Mundo!!"
    }
        else if segue.identifier == "rojo"{
            let miViewController = segue.destination as! RojoViewController
            miViewController.sCade = "Hola Mundo en Rojo!!"
    }
    }
}

