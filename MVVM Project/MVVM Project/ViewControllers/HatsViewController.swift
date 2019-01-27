//
//  HatsViewController.swift
//  MVVM Project
//
//  Created by Sidhi Artha on 27/01/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit

class HatsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onOpenDetail(sender: UIButton) {
        let viewController = DetailProductViewController()
        viewController.productName = "Hats"
        self.show(viewController, sender: self)
    }
}
