//
//  Product.swift
//  MVVM Project
//
//  Created by Sidhi Artha on 27/01/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Product: Codable {
    let id: Int
    let name: String
    let brand: String
    let imageUrl: String
    let description: String
    let price: String
    
    static func fromJson(json: JSON) -> Product {
        let id = json["id"].intValue
        let name = json["name"].stringValue
        let brand = json["brand"].stringValue
        let imageUrl = json["image_url"].stringValue
        let description = json["description"].stringValue
        let price = json["price"].stringValue
        
        return Product(id: id, name: name, brand: brand, imageUrl: imageUrl, description: description, price: price)
    }
}
