//
//  AddProductController.swift
//  Product Application
//
//  Created by Mitul Sarvaiya on 07/04/20.
//  Copyright © 2020 Mitul Sarvaiya. All rights reserved.
//

import UIKit

class AddProductController: UIViewController {

    @IBOutlet var txtQty: UIView!
    @IBOutlet weak var txtPrice: UITextField!
    @IBOutlet weak var txtProductName: UITextField!
    
    @IBOutlet weak var txtQtyy: UITextField!
    var category: Category?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Add " + (category?.name)!
    // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnSave(_ sender: Any) {
        let name = txtProductName.text ?? ""
        let price_string = txtPrice.text ?? ""
        let qty_string = txtQtyy.text ?? ""
        
        let price = Double(price_string) ?? 0.0
        let qty = Double(qty_string) ?? 0.0
     
        if let foProduct = Product(name_: name, price_: price, qty_: qty) {
            category?.addToRawproducts(foProduct)
            
            do{
                    try  foProduct.managedObjectContext?.save()
                self.navigationController?.popViewController(animated: true)
            }catch{
                    print("error while saving product")
            }
           
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
