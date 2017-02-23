//
//  outgoingChatTableViewCell.swift
//  chat
//
//  Created by Sierra 4 on 20/02/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

class outgoingChatTableViewCell: UITableViewCell {
    
    @IBOutlet var viewOutgoing: UIView!
    @IBOutlet var lblOutgoingText: UILabel!
    @IBOutlet var lblOutgoingTime: UILabel!
    @IBOutlet var lblOutgoingDeliveryStatus: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewOutgoing.layer.cornerRadius = 25
        viewOutgoing.layer.masksToBounds=true
        viewOutgoing.layer.borderColor=UIColor.init(red: 248/255, green: 208/255, blue: 73/255, alpha: 1).cgColor
        viewOutgoing.layer.borderWidth=2
        
        let date = Date()
        let hour = Calendar.current.component(.hour, from: date)
        let minute=Calendar.current.component(.minute, from: date)
        lblOutgoingTime.text="\(hour):" + "\(minute)"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }    
}
