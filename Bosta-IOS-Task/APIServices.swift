//
//  APIServices.swift
//  Bosta-IOS-Task
//
//  Created by Omar-Mac on 01/03/2023.
//

import Foundation
import Moya
import  RxCocoa
import RxSwift

class APIService{
    
    var apiServicProvider = MoyaProvider<API>()
    var profileVM = ProfileViewModel()
    
    func readUsers(profileMV: ProfileViewModel){
        
        apiServicProvider.request(.getUsers){  (result) in
            switch result {
            case .success(let response):
//                let json = try! JSONSerialization.jsonObject(with: response.data,options: [])
                //print(json)
                
                let users = try! JSONDecoder().decode([User].self, from: response.data)
                profileMV.returnedUers = users
                profileMV.users.onNext(profileMV.returnedUers)
                profileMV.users.onCompleted()
                print("API Service")
                
            case .failure(let error): print(error.localizedDescription)
            }
           
        }
    }
    
}
