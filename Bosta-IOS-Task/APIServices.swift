//
//  APIServices.swift
//  Bosta-IOS-Task
//
//  Created by Omar-Mac on 01/03/2023.
//

import Foundation
import Moya

class APIService{
    
    var apiServicProvider = MoyaProvider<API>()
    
    func readUsers(){
        
        apiServicProvider.request(.getUsers){  (result) in
            switch result {
            case .success(let response):
                let json = try! JSONSerialization.jsonObject(with: response.data,options: [])
                print(json)
                
            case .failure(let error): print(error.localizedDescription)
            }
           
            
        }
    }
    
}
