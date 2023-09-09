//
//  ProfileViewModel.swift
//  Bosta-IOS-Task
//
//  Created by Omar-Mac on 09/09/2023.
//

import Foundation
import RxCocoa
import RxSwift 

class ProfileViewModel{
    
    public var users = BehaviorSubject(value: [User]())
    
    public var albums = BehaviorSubject(value: [Album]())

    
    func fetchUsers(profileMV: ProfileViewModel){
        ProfileAPIService().readUsers(profileMV: profileMV)
        
    }
    
    
    
}
