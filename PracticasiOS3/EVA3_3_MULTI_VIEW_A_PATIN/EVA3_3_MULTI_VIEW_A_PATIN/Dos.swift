//
//  Dos.swift
//  EVA3_3_MULTI_VIEW_A_PATIN
//
//  Created by BRANDON on 03/05/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class Dos: UIViewController {

    @IBAction func btnDos(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
