//
//  outgoingChatTableViewCell.swift
//  chat
//
//  Created by Sierra 4 on 20/02/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

class outgoingChatTableViewCell: UITableViewCell {
    
    @IBOutlet var lblOutgoingText: UILabel!
    @IBOutlet var lblOutgoingTime: UILabel!
    @IBOutlet var lblOutgoingDeliveryStatus: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }    
}
