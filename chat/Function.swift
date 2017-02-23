//
//  Function.swift
//  chat
//
//  Created by Sierra 4 on 21/02/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import Foundation

extension ViewController{
    func tapButton(tap: Bool){
        if (doubleTap) {
        viewOption.isHidden = true
        doubleTap = false
        }
        else {
        viewOption.isHidden = false
        doubleTap = true
        }
    }
    
    func tableViewScrollToBottom(animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(300)) {
            let numberOfSections = self.tableViewChat.numberOfSections
            let numberOfRows = self.tableViewChat.numberOfRows(inSection: numberOfSections-1)
            
            if numberOfRows > 0 {
                let indexPath = IndexPath(row: numberOfRows-1, section: (numberOfSections-1))
                self.tableViewChat.scrollToRow(at: indexPath, at: .bottom, animated: animated)
            }
        }
    }

}
