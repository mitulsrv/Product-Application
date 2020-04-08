//
//  AddCategoryController.swift
//  Product Application
//
//  Created by Mitul Sarvaiya on 07/04/20.
//  Copyright © 2020 Mitul Sarvaiya. All rights reserved.
//

import UIKit

class AddCategoryController: UIViewController {

    @IBOutlet weak var txtCategory: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var saveCategory: UIButton!
    
    
     @IBAction func btnSave(_ sender: Any) {
        let category = Category(name_: txtCategory.text ?? "")
        
        do{
            try category?.managedObjectContext?.save()
            
            self.navigationController?.popViewController(animated: true)
        }catch{
            print("error while saving category");
        }
     }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
