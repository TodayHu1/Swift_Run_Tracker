//
//  Run+CoreDataProperties.swift
//  Run Tracker
//
//  Created by Trent Hand on 3/20/17.
//  Copyright © 2017 Trent Hand. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Run {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Run> {
        return NSFetchRequest<Run>(entityName: "Run");
    }

    @NSManaged public var rundistance: String?
    @NSManaged public var runname: String?
    @NSManaged public var runtime: String?

}
