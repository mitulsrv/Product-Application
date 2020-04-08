//
//  Product+CoreDataClass.swift
//  Product Application
//
//  Created by Mitul Sarvaiya on 07/04/20.
//  Copyright © 2020 Mitul Sarvaiya. All rights reserved.
//

import UIKit
import CoreData

@objc(Product)
public class Product: NSManagedObject {
    
    
    convenience init?(name_: String, price_: Double, qty_: Double){
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDelegate?.persistentContainer.viewContext else{
                return nil
            }
        
        self.init(entity: Product.entity(), insertInto: context)
        
        self.name = name_
        self.price = price_
        self.qty = qty_
    }
}
