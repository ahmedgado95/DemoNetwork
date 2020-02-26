//
//  SearchRouter.swift
//  NetWorkLayer
//
//  Created by A on 26/02/2020.
//  Copyright © 2020 Ahmed Gado. All rights reserved.
//

import Foundation
import Alamofire
enum SearchRouter : URLRequestConvertible {
    case getSearch(fullAddress : String)
    
    var header : [String : Any]? {
        return [
            "" :""
        ]
    }
    var method : HTTPMethod {
        switch self {
        case .getSearch:
            return .post
        }
    }
    
    
    var parameters: Parameters? {
        var params = Parameters()
        switch self {
        case .getSearch( let fullAddress) :
            params["full_address"] = fullAddress
        }
        return params
    }
    
    
    var url: URL {
        let relativePath : String?
        switch self {
        case .getSearch:
            relativePath = Constants.Search
        }
        var url = URL(string: Constants.baseURL)!
        if let relativePath = relativePath {
            url = url.appendingPathComponent(relativePath)
        }
        return url
    }
    
    var encoding: ParameterEncoding {
        switch self {
        default :
            return JSONEncoding.default
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        //        urlRequest.setHeaders(headers: headers)
        return try encoding.encode(urlRequest, with: parameters)
    }
    
}
