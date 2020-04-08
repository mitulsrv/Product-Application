//
//  Category+CoreDataProperties.swift
//  Product Application
//
//  Created by Mitul Sarvaiya on 07/04/20.
//  Copyright © 2020 Mitul Sarvaiya. All rights reserved.
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var name: String?
    @NSManaged public var rawproducts: NSOrderedSet?

}

// MARK: Generated accessors for rawproducts
extension Category {

    @objc(insertObject:inRawproductsAtIndex:)
    @NSManaged public func insertIntoRawproducts(_ value: Product, at idx: Int)

    @objc(removeObjectFromRawproductsAtIndex:)
    @NSManaged public func removeFromRawproducts(at idx: Int)

    @objc(insertRawproducts:atIndexes:)
    @NSManaged public func insertIntoRawproducts(_ values: [Product], at indexes: NSIndexSet)

    @objc(removeRawproductsAtIndexes:)
    @NSManaged public func removeFromRawproducts(at indexes: NSIndexSet)

    @objc(replaceObjectInRawproductsAtIndex:withObject:)
    @NSManaged public func replaceRawproducts(at idx: Int, with value: Product)

    @objc(replaceRawproductsAtIndexes:withRawproducts:)
    @NSManaged public func replaceRawproducts(at indexes: NSIndexSet, with values: [Product])

    @objc(addRawproductsObject:)
    @NSManaged public func addToRawproducts(_ value: Product)

    @objc(removeRawproductsObject:)
    @NSManaged public func removeFromRawproducts(_ value: Product)

    @objc(addRawproducts:)
    @NSManaged public func addToRawproducts(_ values: NSOrderedSet)

    @objc(removeRawproducts:)
    @NSManaged public func removeFromRawproducts(_ values: NSOrderedSet)

}
