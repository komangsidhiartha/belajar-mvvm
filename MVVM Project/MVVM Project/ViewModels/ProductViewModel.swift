//
//  ProductViewModel.swift
//  MVVM Project
//
//  Created by Sidhi Artha on 30/01/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import SwiftyJSON

class ProductViewModel {
    
    private let product: Product
    
    init(_ product: Product) {
        self.product = product
    }
    
    convenience init(json: JSON) {
        self.init(Product.fromJson(json: json))
    }
    
    public var name: String {
        return product.name
    }
    
    public var brand: String {
        if product.brand != "" {
            return "by " + product.brand
        }
        
        return ""
    }
    
    public var price: String {
        return "price: " + product.price
    }
    
    public var description: String {
        return product.description
    }
    
    public var imageUrl: URL {
        return URL(string: product.imageUrl)!
    }
}
