//
//  APIServices.swift
//  Bosta-IOS-Task
//
//  Created by Omar-Mac on 09/09/2023.
//

import Foundation
import Moya
import RxCocoa
import RxSwift

class ProfileAPIService{
    
    var apiServicProvider = MoyaProvider<API>()
    var profileVM = ProfileViewModel()
    
    func readUsers(profileMV: ProfileViewModel){
        
        apiServicProvider.request(.getUsers){  (result) in
            switch result {
            case .success(let response):
                
                let users = try! JSONDecoder().decode([User].self, from: response.data)
                profileMV.users.on(.next(users))
    
                self.readAlbumes(profileMV: profileMV)
                
            case .failure(let error): print(error.localizedDescription)
            }
           
        }
    }
    
    func readAlbumes(profileMV: ProfileViewModel){
        
        
        apiServicProvider.request(.getAlbums(userID : 1)){ (result) in
            switch result
            {
            case .success(let response):
                let albums = try! JSONDecoder().decode([Album].self, from: response.data)
                profileMV.albums.on(.next(albums))
            case .failure(let error): print(error.localizedDescription)
            }
           
        }
    }
    
}
