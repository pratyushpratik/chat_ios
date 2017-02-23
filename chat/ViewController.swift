//
//  ViewController.swift
//  chat
//
//  Created by Sierra 4 on 20/02/17.
//  Copyright © 2017 codebrew. All rights reserved.
//
import UIKit
import CoreData

class ViewController: UIViewController,UITableViewDelegate , UITableViewDataSource, UITextViewDelegate {
    
    @IBOutlet var imgProfilePicture: UIImageView!
    
    @IBOutlet var viewOption: UITableView!
    
    @IBOutlet var tableViewChat: UITableView!
    
    @IBOutlet var txtViewChat: UITextView!
    
    @IBOutlet var btnSend: UIButton!
    
    var keyboardHeight: CGFloat?
    
    var sentMessages : [String] = []
    
    var doubleTap : Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.setAnimationsEnabled(false)
        tableViewScrollToBottom(animated: true)
        UIView.setAnimationsEnabled(true)
        
        tableViewChat.estimatedRowHeight = 30.0
        tableViewChat.rowHeight = UITableViewAutomaticDimension
        
        UITextView.setAnimationsEnabled(false)
        self.txtViewChat.contentInset = UIEdgeInsetsMake(2, 12, 2, -15);
        UITextView.setAnimationsEnabled(true)
        
        txtViewChat.sizeToFit()
        txtViewChat.layoutIfNeeded()
        let height = txtViewChat.sizeThatFits(CGSize(width: txtViewChat.frame.size.width, height: CGFloat.greatestFiniteMagnitude)).height
        txtViewChat.contentSize.height = height
        
        imgProfilePicture.layer.cornerRadius = imgProfilePicture.frame.height/2
        imgProfilePicture.layer.masksToBounds=true
        
        viewOption.layer.cornerRadius = 15
        viewOption.layer.masksToBounds=true
        viewOption.layer.borderColor=UIColor.init(red: 237/255, green: 239/255, blue: 240/255, alpha: 1).cgColor
        viewOption.layer.borderWidth=2
        
        txtViewChat.layer.cornerRadius = 20
        txtViewChat.layer.masksToBounds=true
        txtViewChat.layer.borderColor=UIColor.white.cgColor
        txtViewChat.layer.borderWidth=2
        
        btnSend.layer.cornerRadius = btnSend.frame.height/2
        btnSend.layer.masksToBounds=true
        btnSend.layer.borderColor=UIColor.white.cgColor
        
        sentMessages =  fetchCoreData(entity: "Chat", key: "text")
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        UITableView.setAnimationsEnabled(false)
        tableViewScrollToBottom(animated: true)
        UITableView.setAnimationsEnabled(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func btnOptionOperation(_ sender: Any) {
        tapButton(tap: doubleTap)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sentMessages.count
    }
    
    @IBAction func btnSendOperation(_ sender: Any) {
        
        if(txtViewChat.text == "") {
        }
        else {
            UITableView.setAnimationsEnabled(false)
            tableViewScrollToBottom(animated: true)
            UITableView.setAnimationsEnabled(true)
            saveCoreData(entity: "Chat", key: "text", text: txtViewChat.text!)
            sentMessages.append(txtViewChat.text!)
            tableViewChat.reloadData()
            txtViewChat.text = ""
        }
    }
    
    func tableView(_ Table: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = Bundle.main.loadNibNamed("outgoingChatTableViewCell", owner: self, options: nil)?.first as! outgoingChatTableViewCell
//        cell.lblOutgoingText.isHidden = false
//        cell.lblOutgoingText.text = sentMessages[indexPath.row].trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
//        cell.lblOutgoingDeliveryStatus.text = "sent"
        
        let cell = Bundle.main.loadNibNamed("incomingChatTableViewCell", owner: self, options: nil)?.first as! incomingChatTableViewCell
                cell.lblIncomingText.isHidden = false
        cell.lblIncomingText.text = sentMessages[indexPath.row].trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        cell.lblIncomingDeliveryStatus.text = "sent"
        
        return cell
    }
    
    @IBAction func btnBack(_ sender: Any) {
         _ = self.navigationController?.popViewController(animated: true)
    }
}
