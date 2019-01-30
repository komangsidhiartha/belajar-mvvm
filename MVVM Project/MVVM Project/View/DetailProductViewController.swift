//
//  DetailProductViewController.swift
//  MVVM Project
//
//  Created by Sidhi Artha on 27/01/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit

class DetailProductViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var product: ProductViewModel? {
        didSet {
            self.bindDataToView()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        bindDataToView()
    }

    private func bindDataToView() {
        self.title = self.product?.name
        self.brandLabel?.text = self.product?.brand
        self.priceLabel?.text = self.product?.price
        self.descriptionLabel?.text = self.product?.description
        
        if let url = self.product?.imageUrl {
            self.photoImageView?.af_setImage(withURL: url)
        }
    }
}
