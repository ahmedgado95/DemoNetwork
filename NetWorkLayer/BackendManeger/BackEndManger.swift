//
//  BackEndManger.swift
//  NetWorkLayer
//
//  Created by A on 25/02/2020.
//  Copyright © 2020 Ahmed Gado. All rights reserved.
//

import Foundation
import Alamofire


class BackendMager  {
    weak var delegate: SearchDelegate!
    func getSearchData(){
        Alamofire.request(SearchRouter.getSearch(fullAddress: "")).responseJSON { (response) in
            switch response.result {
            case .success(let value) :
                do {
                    let value = try JSONDecoder().decode(SearchModel.self, from: response.data!)
                    print(value)
                    guard  let item = value.data else {return}
                    self.delegate.didDownLoad(search: item )
                    
                }catch (let error){
                    print(error)
                    
                }
            case.failure(let error) :
                self.delegate.fail(error: error.localizedDescription)
            }
        }
    }
}
