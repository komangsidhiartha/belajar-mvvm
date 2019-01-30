//
//  MainMenuViewController.swift
//  MVVM Project
//
//  Created by Sidhi Artha on 27/01/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickHat(button: UIButton) {
        let viewController = ProductListViewController()
        viewController.pageMode = PageMode.hat
        self.show(viewController, sender: self)
    }
    
    @IBAction func onClickShirt(button: UIButton) {
        let viewController = ProductListViewController()
        viewController.pageMode = PageMode.shirt
        self.show(viewController, sender: self)
    }
    
    @IBAction func onClickJeans(button: UIButton) {
        let viewController = ProductListViewController()
        viewController.pageMode = PageMode.jeans
        self.show(viewController, sender: self)
    }
}
