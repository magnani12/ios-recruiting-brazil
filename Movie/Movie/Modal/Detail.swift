//
//  Detail.swift
//  Movie
//
//  Created by VICTOR HUGO MAGNANI  on 17/08/19.
//  Copyright © 2019 Victor Magnani. All rights reserved.
//

import Foundation

struct Detail: Codable, Equatable {
    let overview: String
    let id: Int
    let genres: [Genre]
    let title: String
    let posterPath: String
    let releaseDate: String
    
    private enum CodingKeys: String, CodingKey {
        case overview
        case id
        case title
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case genres
    }
    
    static func ==(lhs: Detail, rhs: Detail) -> Bool {
        return lhs.id == rhs.id
    }
    
}

struct Genre: Codable {
    let id: Int
    let name: String
}

