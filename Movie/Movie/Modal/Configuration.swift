//
//  ConfigImage.swift
//  Movie
//
//  Created by VICTOR HUGO MAGNANI  on 17/08/19.
//  Copyright © 2019 Victor Magnani. All rights reserved.
//
import Foundation

struct Configuration: Codable {
    let images: Images
}

struct Images: Codable {
    
    let baseURL: String
    let posterSizes: [String]
    
    private enum CodingKeys: String, CodingKey {
        case baseURL = "base_url"
        case posterSizes = "poster_sizes"
    }
}

class APISettings {
    static let shared = APISettings()
    
    var configuration: Configuration?
    let client = MovieAPIClient()
    
    private init() {
        client.fetchConfiguration { response in
            switch response {
            case .success(let configuration):
                self.configuration = configuration
            case .failure( _):
                print("Error fetching configuration")
            }
        }
    }
}
