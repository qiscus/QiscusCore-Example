//
//  DetailAdditionalInformationCell.swift
//  Example
//
//  Created by Qiscus on 03/12/20.
//  Copyright © 2020 Qiscus. All rights reserved.
//

import UIKit

class DetailAdditionalInformationCell: UITableViewCell {
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbDescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}