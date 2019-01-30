//
//  ApiService.swift
//  MVVM Project
//
//  Created by Sidhi Artha on 28/01/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import Alamofire_SwiftyJSON

public typealias ApiCallResultEnclosure = (_ resoponse: JSON? ) -> Void

class ApiService {
    static let shared = ApiService()
    
    let baseUrl = "http://demo9618857.mockable.io"
    
    func get(partUrl: String, completionHandler: @escaping ApiCallResultEnclosure) {
        let fullUrl = baseUrl + "/" + partUrl
        Alamofire.request(fullUrl, method: .get, parameters: nil, encoding: URLEncoding.default).responseSwiftyJSON { (dataResponse) in
            completionHandler(dataResponse.value)
        }
    }
}
