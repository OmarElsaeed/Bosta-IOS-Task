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
    
    public  var returnedUers = [User]()
    public  var users = PublishSubject<[User]>()
    public let ay = Observable.just(["omar","elaasas","ajlsaks"])
    
//    func numberOfSections() -> Int{
//        return 0
//    }
//
//    func numberOfRows(in secion: Int) -> Int{
//
//        return (UsersData.dataArray?.count)!
//    }
    
    
    func fetchUsers(profileMV: ProfileViewModel){
        print("returned userr = \(returnedUers)")
        
        print("returned userr = \(returnedUers)")
        APIService().readUsers(profileMV: profileMV)
    }
    
}
