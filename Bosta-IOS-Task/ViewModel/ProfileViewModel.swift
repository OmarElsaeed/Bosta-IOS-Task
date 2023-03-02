//
//  ProfileViewModel.swift
//  Bosta-IOS-Task
//
//  Created by Omar-Mac on 01/03/2023.
//

import Foundation
import RxCocoa
import RxSwift 

class ProfileViewModel{
    
//    public var returnedUers = [User]()
    public var users = BehaviorSubject(value: [User]())
//    public var returnedAlbumes = [Album]()
    public var albums = BehaviorSubject(value: [Album]())
    
    
    
    func fetchUsers(profileMV: ProfileViewModel){
        APIService().readUsers(profileMV: profileMV)
        
    }
    
    
    
}
