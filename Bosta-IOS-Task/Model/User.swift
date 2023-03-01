//
//  User.swift
//  Bosta-IOS-Task
//
//  Created by Omar-Mac on 01/03/2023.
//

import Foundation
import Foundation

struct User: Codable {
    let id: Int
    let name, username, email, address: String
    let phone, website: String
}

