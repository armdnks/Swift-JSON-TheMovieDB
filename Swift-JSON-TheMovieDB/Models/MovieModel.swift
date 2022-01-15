//
//  MovieModel.swift
//  Swift-JSON-TheMovieDB
//
//  Created by armdnks on 1/15/22.
//

import Foundation

struct MovieResponse: Codable {
    
    let movies: [MovieModel]
}

struct MovieModel: Codable {
    
    let id: String
    let title: String
    let posterPath: String
    let backdropPath: String
    
    var posterURL: URL {
        return URL(string: "https://image.tmdb.org/t/p/w500\(posterPath )")!
    }
    
    var backdropURL: URL {
        return URL(string: "https://image.tmdb.org/t/p/w500\(backdropPath )")!
    }
    
    private enum CodingKeys: String, CodingKey {
        
        case id
        case title
        case posterPath = "poster_path"
        case backdropParh = "backdrop_path"
    }
}
