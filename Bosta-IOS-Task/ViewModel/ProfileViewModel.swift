//
//  ProfileViewModel.swift
//  Bosta-IOS-Task
//
//  Created by Omar-Mac on 01/03/2023.
//

import Foundation

class ProfileViewModel{
    
    func numberOfSections() -> Int{
        return 0
    }
    
    func numberOfRows(in secion: Int) -> Int{
        
        return (UsersData.dataArray?.count)!
    }
    
    func getUserData(){
        APIService().readUsers()
    }
    
}
