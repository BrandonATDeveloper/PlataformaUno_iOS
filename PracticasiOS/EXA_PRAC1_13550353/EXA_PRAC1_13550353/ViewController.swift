//
//  ViewController.swift
//  EXA_PRAC1_13550353
//
//  Created by BRANDON on 28/02/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblAR: UILabel!
    @IBOutlet weak var lblCali: UILabel!
    @IBOutlet weak var lblCredi: UILabel!
    @IBAction func crediSlider(_ sender: UISlider) {
        lblCredi.text = "\(sender.value)"
    }
    
    @IBAction func caliSlider(_ sender: UISlider) {
        lblCali.text = "\(sender.value)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

