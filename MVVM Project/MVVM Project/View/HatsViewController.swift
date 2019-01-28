//
//  HatsViewController.swift
//  MVVM Project
//
//  Created by Sidhi Artha on 27/01/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit

class HatsViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var hats = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "Product")
        tableView.dataSource = self
        tableView.delegate = self
        
        ApiService.shared.get(partUrl: "list/hat") { [weak self] response in
            if response?["status"].bool == true {
                for object in response?["list"].array ?? [] {
                    let hat = Product.fromJson(json: object)
                    self?.hats.append(hat)
                }
                
                self?.tableView.reloadData()
            }
        }
    }
}

extension HatsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Product", for: indexPath) as! ProductTableViewCell
        
        cell.product = hats[indexPath.row]
        
        return cell
    }
}

extension HatsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DetailProductViewController()
        viewController.product = hats[indexPath.row]
        self.show(viewController, sender: self)
    }
}
