//
//  TableViewCellMy.swift
//  2DA_EVA_5_TABLEVIEW
//
//  Created by BRANDON on 14/03/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class TableViewCellMy: UITableViewCell {
    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblUbi: UILabel!
    @IBOutlet var lblDes: UILabel!
    @IBOutlet var imgImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
