//
//  ProductListViewControllerExtension+TableViewDelegate.swift
//  MVVM Project
//
//  Created by Sidhi Artha on 30/01/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit

extension ProductListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DetailProductViewController()
        viewController.product = viewModel.products[indexPath.row]
        self.show(viewController, sender: self)
        tableView.deselectRow(at: indexPath, animated: false)
    }
}
