//
//  DetailProductViewController.swift
//  MVVM Project
//
//  Created by Sidhi Artha on 27/01/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit

class DetailProductViewController: UIViewController {

    var productName: String? {
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
        guard let productName = self.productName else {
            return
        }
        
        self.title = "Detail of " + productName
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
