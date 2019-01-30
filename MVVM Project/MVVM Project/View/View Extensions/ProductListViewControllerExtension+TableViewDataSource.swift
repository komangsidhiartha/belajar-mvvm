//
//  ProductListViewControllerExtension+TableViewDataSource.swift
//  MVVM Project
//
//  Created by Sidhi Artha on 30/01/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit

extension ProductListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Product", for: indexPath) as! ProductTableViewCell
        
        cell.product = products[indexPath.row]
        
        return cell
    }
}
