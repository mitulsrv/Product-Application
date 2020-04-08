//
//  ViewController.swift
//  Product Application
//
//  Created by Mitul Sarvaiya on 07/04/20.
//  Copyright © 2020 Mitul Sarvaiya. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tblCategories: UITableView!
    var categoryList: [Category] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblCategories.delegate = self
        self.tblCategories.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
            return
        }
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest: NSFetchRequest<Category> = Category.fetchRequest()
        
        do{
           categoryList =  try managedContext.fetch(fetchRequest)
            tblCategories.reloadData()
        }catch{
            print("error while fetching category data")
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "SegueProductView", sender: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (categoryList.count);
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblCategories.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CategoryCell
        let foCategory: Category = self.categoryList[indexPath.row]
        
        cell?.setCategory_(name: foCategory.name ?? "")
        return cell!;
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? ProductViewController,
            let selectedCategory = self.tblCategories.indexPathForSelectedRow?.row else{
            return
        }
        destination.category = categoryList[selectedCategory]
        
    }
}

