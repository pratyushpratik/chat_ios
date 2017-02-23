//
//  User+CoreDataProperties.swift
//  chat
//
//  Created by Sierra 4 on 23/02/17.
//  Copyright © 2017 codebrew. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User");
    }

    @NSManaged public var firstName: String?
    @NSManaged public var id: String?
    @NSManaged public var lastName: String?
    @NSManaged public var chat: NSSet?

}

// MARK: Generated accessors for chat
extension User {

    @objc(addChatObject:)
    @NSManaged public func addToChat(_ value: Chat)

    @objc(removeChatObject:)
    @NSManaged public func removeFromChat(_ value: Chat)

    @objc(addChat:)
    @NSManaged public func addToChat(_ values: NSSet)

    @objc(removeChat:)
    @NSManaged public func removeFromChat(_ values: NSSet)

}
