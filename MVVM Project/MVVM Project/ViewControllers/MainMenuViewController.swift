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
        self.show(HatsViewController(), sender: self)
    }
    
    @IBAction func onClickShirt(button: UIButton) {
        self.show(ShirtViewController(), sender: self)
    }
    
    @IBAction func onClickJeans(button: UIButton) {
        self.show(JeansViewController(), sender: self)
    }
}
