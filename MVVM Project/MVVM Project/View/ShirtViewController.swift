//
//  ShirtViewController.swift
//  MVVM Project
//
//  Created by Sidhi Artha on 27/01/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit

class ShirtViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onOpenDetail(sender: UIButton) {
        let viewController = DetailProductViewController()
//        viewController.product = "Shirt"
        self.show(viewController, sender: self)
    }
}
