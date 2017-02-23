//
//  Chat+CoreDataProperties.swift
//  chat
//
//  Created by Sierra 4 on 23/02/17.
//  Copyright © 2017 codebrew. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Chat {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Chat> {
        return NSFetchRequest<Chat>(entityName: "Chat");
    }

    @NSManaged public var date: String?
    @NSManaged public var image: String?
    @NSManaged public var text: String?
    @NSManaged public var time: String?
    @NSManaged public var user: User?

}
