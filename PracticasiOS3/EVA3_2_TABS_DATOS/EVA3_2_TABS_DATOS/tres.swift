//
//  tres.swift
//  EVA3_2_TABS_DATOS
//
//  Created by BRANDON on 02/05/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class tres: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Tres - View Did Load")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Tres . viewWillApear")
        //let global = self.tabBarController as! TabBar
        //global.sCade = "Selecciono Tres"
        let misViewCtrl = self.tabBarController?.viewControllers //lista de viewcontrollerxs
        let unoViewController = misViewCtrl![0] as! Uno //accesedomos a lo buscado
        unoViewController.sCade = "Selecciono Tres"

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
