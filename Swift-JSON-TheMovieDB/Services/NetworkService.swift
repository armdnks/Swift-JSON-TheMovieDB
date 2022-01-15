//
//  NetworkService.swift
//  Swift-JSON-TheMovieDB
//
//  Created by armdnks on 1/15/22.
//

import Foundation

enum MovieEndPoint: String, CaseIterable {
    
    case nowPlaying = "now_playing"
    case popular
    case topRated = "top_rated"
    case upcoming
    
    var description: String {
        
        switch self {
        
        case .nowPlaying: return "Now Playing"
        case .popular: return "Popular"
        case .topRated: return "Top Rated"
        case .upcoming: return "Upcoming"
        }
    }
}

enum NetworkError: Error {
    
    case badURL
    case noData
    case decodingError
    
    var localizedDescription: String {
        
        switch self {
        
        case .badURL: return "URL went wrong"
        case .noData: return "No Data"
        case .decodingError: return "Failed to decode data"
        }
    }
}
