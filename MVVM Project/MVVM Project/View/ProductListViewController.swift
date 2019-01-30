//
//  HatsViewController.swift
//  MVVM Project
//
//  Created by Sidhi Artha on 27/01/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var partUrl: String? {
        didSet {
            self.loadData()
        }
    }
    var apiCalled = false
    var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView?.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "Product")
        tableView?.dataSource = self
        tableView?.delegate = self
        
        self.loadData()
    }
}

extension ProductListViewController {
    func loadData() {
        if partUrl == nil || apiCalled {
            return
        }
        
        apiCalled = true
        
        ApiService.shared.get(partUrl: partUrl!) { [weak self] response in
            if response?["status"].bool == true {
                for object in response?["list"].array ?? [] {
                    let hat = Product.fromJson(json: object)
                    self?.products.append(hat)
                }
                
                self?.tableView?.reloadData()
            }
        }
    }
}
