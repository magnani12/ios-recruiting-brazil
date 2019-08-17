//
//  Movie.swift
//  Movie
//
//  Created by VICTOR HUGO MAGNANI on 17/08/19.
//  Copyright © 2019 Victor Magnani. All rights reserved.
//

import Foundation

struct Movie: Codable {
    let id: Int
    let title: String
    let posterPath: String
    let genreIds: [Int]
    let releaseDate: String
    let backdropPath: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case posterPath = "poster_path"
        case genreIds = "genre_ids"
        case releaseDate = "release_date"
        case backdropPath = "backdrop_path"
    }
}

extension Movie: Equatable {
    static func ==(lhs: Movie, rhs: Movie) -> Bool {
        return lhs.id == rhs.id
    }
}

