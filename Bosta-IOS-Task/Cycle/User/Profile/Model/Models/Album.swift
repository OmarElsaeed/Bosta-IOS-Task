//
//  AlbumsModel.swift
//  Bosta-IOS-Task
//
//  Created by Omar-Mac on 09/09/2023.
//

import Foundation

import Foundation


struct Album: Codable {
    let userID, id: Int
    let title: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title
    }
}
