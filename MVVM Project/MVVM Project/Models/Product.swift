//
//  Product.swift
//  MVVM Project
//
//  Created by Sidhi Artha on 27/01/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import Foundation

struct Product: Codable {
    let id: Int
    let name: String
    let brand: String
    let imageUrl: String
    let description: String
    let price: String
}
