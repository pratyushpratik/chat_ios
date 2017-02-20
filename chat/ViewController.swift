//
//  ViewController.swift
//  chat
//
//  Created by Sierra 4 on 20/02/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imgProfilePicture: UIImageView!
    
    @IBOutlet var txtViewChat: UITextView!
    
    @IBOutlet var btnSend: UIButton!
    
    @IBOutlet var tableViewChatOutlet: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        txtViewChat.text = "  Type message"
        txtViewChat.textColor = UIColor.lightGray
        
        imgProfilePicture.layer.cornerRadius = imgProfilePicture.frame.height/2
        imgProfilePicture.layer.masksToBounds=true
        
    
        txtViewChat.layer.cornerRadius = 20
        txtViewChat.layer.masksToBounds=true
        txtViewChat.layer.borderColor=UIColor.init(red: 237/255, green: 239/255, blue: 240/255, alpha: 1).cgColor
        txtViewChat.layer.borderWidth=1
        
        btnSend.layer.cornerRadius = btnSend.frame.height/2
        btnSend.layer.masksToBounds=true
        btnSend.layer.borderColor=UIColor.white.cgColor
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolBar.setItems([flexibleSpace, doneButton], animated: false)
        
        txtViewChat.inputAccessoryView = toolBar
        
    }
    
    func doneClicked() {
        view.endEditing(true)
    }
    
   func textViewDidBeginEditing(_ textView: UITextView) {
        animateViewMoving(up: true, moveValue: 300)
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        animateViewMoving(up: false, moveValue: 300)
        if textView.text.isEmpty {
            textView.text = "  Type message"
            textView.textColor = UIColor.lightGray
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func animateViewMoving (up:Bool, moveValue :CGFloat){
        let movementDuration:TimeInterval = 0.3
        let movement:CGFloat = ( up ? -moveValue : moveValue)
        UITableView.beginAnimations( "animateView", context: nil)
        UITableView.setAnimationBeginsFromCurrentState(true)
        UITableView.setAnimationDuration(movementDuration )
        self.view.frame = self.view.frame.offsetBy(dx: 0,  dy: movement)
        UITableView.commitAnimations()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

