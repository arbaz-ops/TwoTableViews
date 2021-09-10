//
//  MyTableViewCell.swift
//  TwoTableViews
//
//  Created by Mac on 07/07/2021.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var myLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
