//
//  DetailProductViewController.swift
//  MVVM Project
//
//  Created by Sidhi Artha on 27/01/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit

class DetailProductViewController: UIViewController {

    var product: Product? {
        didSet {
            self.setPageTitle()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setPageTitle()
    }

    private func setPageTitle() {
        self.title = self.product?.name
    }
}
