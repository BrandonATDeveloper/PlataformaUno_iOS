//
//  RojoViewController.swift
//  EVA2_9_SEGUE
//
//  Created by BRANDON on 23/03/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class RojoViewController: UIViewController {

    @IBOutlet weak var lblDatos: UILabel!
    var sCade = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        lblDatos.text = sCade
        // Do any additional setup after loading the view.
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
