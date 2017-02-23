//
//  incomingChatTableViewCell.swift
//  chat
//
//  Created by Sierra 4 on 20/02/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

class incomingChatTableViewCell: UITableViewCell {

    @IBOutlet var viewIncoming: UIView!
    @IBOutlet var lblIncomingText: UILabel!
    @IBOutlet var lblIncomingTime: UILabel!
    @IBOutlet var lblIncomingDeliveryStatus: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewIncoming.layer.cornerRadius = 25
        viewIncoming.layer.masksToBounds=true
        viewIncoming.layer.borderColor=UIColor.white.cgColor
        viewIncoming.layer.borderWidth=2
        
        let date = Date()
        let hour = Calendar.current.component(.hour, from: date)
        let minute=Calendar.current.component(.minute, from: date)
        lblIncomingTime.text="\(hour):" + "\(minute)"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
