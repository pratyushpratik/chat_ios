//
//  ChatsDisplayViewController.swift
//  chat
//
//  Created by Sierra 4 on 23/02/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

class ChatsDisplayViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    func tableView(_ Table: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("ChatsDisplayTableViewCell", owner: self, options: nil)?.first as! ChatsDisplayTableViewCell
//        cell.lblIncomingText.isHidden = false
//        cell.lblIncomingText.text = sentMessages[indexPath.row].trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
//        cell.lblIncomingDeliveryStatus.text = "sent"
        cell.lblUserName.text = "me"
        cell.lblLastMessage.text = "dfsalhdsah"
        cell.lblLastMessageTime.text = "fdsabdfsjkb"
        return cell
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ Table: UITableView, didSelectRowAt indexPath: IndexPath){
        performSegue(withIdentifier: "chatView", sender: self)

    }
    
}
