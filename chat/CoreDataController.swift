//
//  CoreData.swift
//  chat
//
//  Created by Sierra 4 on 23/02/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import Foundation
import CoreData
import UIKit

var appDel: AppDelegate = UIApplication.shared.delegate as! AppDelegate

var context = appDel.managedObjectContext

func saveCoreData(entity: String, key: String, text: String){
    let chat = NSEntityDescription.insertNewObject(forEntityName: entity, into: context)
    chat.setValue(text, forKey: key)
    do{
        try context.save()
        print("save")
    }catch{
        print("not saved")
    }
}

func fetchCoreData(entity: String, key: String) -> [String]{
    var msg: [String] = []
        do{
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: entity)
            let result = try context.fetch(request)
            
            if (result.count) > 0 {
                for item in (result as? [NSManagedObject])!{
                    let name = item.value(forKey: key)
                    msg.append(item.value(forKeyPath: key) as! String? ?? "none")
                    print("saved\(name ?? "")")
                }
                return msg
            }
        }catch{
            print("not retrieved")
        }
    return msg
}
