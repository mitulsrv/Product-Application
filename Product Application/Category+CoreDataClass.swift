//
//  Category+CoreDataClass.swift
//  Product Application
//
//  Created by Mitul Sarvaiya on 07/04/20.
//  Copyright © 2020 Mitul Sarvaiya. All rights reserved.
//

import UIKit
import CoreData

@objc(Category)
public class Category: NSManagedObject {
    var product: [Product]? {
        return self.rawproducts?.array as? [Product]
    }
    
    convenience init?(name_: String){
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDelegate?.persistentContainer.viewContext
            else{
                return nil
        }
        
        self.init(entity: Category.entity(), insertInto: context)
        
        self.name = name_
    }
}
