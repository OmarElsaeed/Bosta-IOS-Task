//
//  Photos.swift
//  Bosta-IOS-Task
//
//  Created by Omar-Mac on 09/09/2023.
//

import Foundation


import Foundation

struct Photo: Codable {
    let albumID, id: Int
    let title: String
    let url, thumbnailURL: String

    enum CodingKeys: String, CodingKey {
        case albumID = "albumId"
        case id, title, url
        case thumbnailURL = "thumbnailUrl"
    }
}
