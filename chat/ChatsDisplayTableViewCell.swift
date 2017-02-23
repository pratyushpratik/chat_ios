//
//  ChatsDisplayTableViewCell.swift
//  chat
//
//  Created by Sierra 4 on 23/02/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

class ChatsDisplayTableViewCell: UITableViewCell {

    @IBOutlet var imgUserProfilePicture: UIImageView!
    
    @IBOutlet var lblUserName: UILabel!
    @IBOutlet var lblLastMessage: UILabel!
  
    @IBOutlet var lblLastMessageTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
