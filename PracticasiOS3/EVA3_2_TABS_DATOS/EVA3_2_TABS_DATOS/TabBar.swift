//
//  TabBar.swift
//  EVA3_2_TABS_DATOS
//
//  Created by BRANDON on 02/05/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class TabBar: UITabBarController{
    
  //  var sCade = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        var sTitle = ""
        if item == tabBar.items![0]{
            sTitle = "Uno"
        }else if item == tabBar.items![1]{
            sTitle = "Dos"
        }else {
            sTitle = "Tres"
        }
        let alerta = UIAlertController(title: sTitle, message: "Hola Mundo", preferredStyle: .alert)
        let accion = UIAlertAction(title: "OK", style: .default, handler: nil)
        alerta.addAction(accion)
        present(alerta, animated: true, completion: nil)
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
