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
    
    var pageMode: PageMode!
    var viewModel: ProductListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tableView?.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "Product")
        tableView?.dataSource = self
        tableView?.delegate = self
        
        viewModel = ProductListViewModel(pageMode)
        viewModel.loadData { [weak self] in
            self?.tableView?.reloadData()
        }
    }
}
