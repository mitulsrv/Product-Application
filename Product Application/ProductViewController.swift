//
//  ProductViewController.swift
//  Product Application
//
//  Created by Mitul Sarvaiya on 07/04/20.
//  Copyright © 2020 Mitul Sarvaiya. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tblProduct: UITableView!
    
    var category: Category?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = category?.name
        self.tblProduct.dataSource = self
        self.tblProduct.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.tblProduct.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblProduct.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ProductCell
        if let ProductCellValue = self.category?.product?[indexPath.row]{
            cell?.lblProductNAme.text = ProductCellValue.name
            cell?.lblPrice.text = "\(ProductCellValue.price)"
        }
        return cell!
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category?.product?.count ?? 0
    }
    
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        guard let destination = segue.destination as? AddProductController else{
            return
        }
        destination.category = self.category
    }
    

}
