//
//  ViewController.swift
//  MVVM Project
//
//  Created by Sidhi Artha on 27/01/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            let navigationViewController = UINavigationController()
            navigationViewController.setViewControllers([MainMenuViewController()], animated: false)
            self.show(navigationViewController, sender: self)
        }
    }
}

