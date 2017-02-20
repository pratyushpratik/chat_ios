//
//  incomingChatTableViewCell.swift
//  chat
//
//  Created by Sierra 4 on 20/02/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

class incomingChatTableViewCell: UITableViewCell {

    @IBOutlet var lblIncomingText: UILabel!
    @IBOutlet var lblIncomingTime: UILabel!
    @IBOutlet var lblIncomingDeliveryStatus: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
