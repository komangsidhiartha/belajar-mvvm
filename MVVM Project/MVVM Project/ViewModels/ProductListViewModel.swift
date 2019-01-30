//
//  ProductListViewModel.swift
//  MVVM Project
//
//  Created by Sidhi Artha on 30/01/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import SwiftyJSON

public typealias LoadDataCompletionHandlerEnclosure = () -> Void

enum PageMode: String {
    case hat = "list/hat"
    case shirt = "list/shirt"
    case jeans = "list/jeans"
}

class ProductListViewModel {
    private let partUrl: PageMode
    private var apiCalled = false
    
    public var products = [ProductViewModel]()
    
    init(_ partUrl: PageMode) {
        self.partUrl = partUrl
    }
    
    func loadData(completionHandler: @escaping LoadDataCompletionHandlerEnclosure) {
        if apiCalled {
            return
        }
        
        apiCalled = true
        
        ApiService.shared.get(partUrl: partUrl.rawValue) { [weak self] response in
            if response?["status"].bool == true {
                for object in response?["list"].array ?? [] {
                    let product = ProductViewModel(json: object)
                    self?.products.append(product)
                }
                
                completionHandler()
            }
        }
    }
}
