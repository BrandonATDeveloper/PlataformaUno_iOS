//
//  ImageViewController.swift
//  2DA_EVA_3_TABLAS2
//
//  Created by BRANDON on 24/03/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var lblDes: UILabel!
    @IBOutlet weak var lblUbi: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgData: UIImageView!
    var sNomImg = ""
    var resName = ""
    var resUbi = ""
    var resDes = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        imgData.image = UIImage(named: sNomImg)!
        lblName.text = resName
        lblUbi.text = resUbi
        lblDes.text = resDes
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
