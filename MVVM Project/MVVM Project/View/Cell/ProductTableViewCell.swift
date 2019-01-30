//
//  ProductTableViewCell.swift
//  MVVM Project
//
//  Created by Sidhi Artha on 28/01/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit
import AlamofireImage

class ProductTableViewCell: UITableViewCell {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var product: ProductViewModel! {
        didSet {
            self.bindDataToView()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.bindDataToView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension ProductTableViewCell {
    func bindDataToView() {
        titleLabel?.text = product?.name
        priceLabel?.text = product?.price
        
        if let url = product?.imageUrl {
            photoImageView.af_setImage(withURL: url)
        }
    }
}
