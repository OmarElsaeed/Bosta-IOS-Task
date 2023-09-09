//
//  API.swift
//  Bosta-IOS-Task
//
//  Created by Omar-Mac on 09/09/2023.
//

import Foundation
import Moya

enum API {
    case getUsers
    case getAlbums(userID: Int)
    case getPhotos(albumID: String)
}

extension API: TargetType {
    var baseURL: URL {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com") else { fatalError() }
        return url
    }
    
    var path: String {
        switch self {
        case .getUsers:
            return "/users"
        case .getAlbums(let userID):
            return "/users/\(userID)/albums"
        case .getPhotos(let albumID):
            return "albums/\(albumID)/photos"
        }
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
            .requestParameters(parameters: [:], encoding: URLEncoding.queryString)
    }
    
    var headers: [String : String]? {
        return nil
    }
}
