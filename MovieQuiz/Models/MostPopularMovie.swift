//
//  MostPopularMovie.swift
//  MovieQuiz
//
//  Created by Aleksandr Baliev on 04.02.2026.
//

import Foundation

struct MostPopularMovie: Codable {
    private enum CodingKeys: String, CodingKey {
        case title = "fullTitle"
        case rating = "imDbRating"
        case imageURL = "image"
    }
    
    private let title: String
    private let imageURL: URL
    let rating: String
    
    var resizedImageURL: URL {
        let urlString = imageURL.absoluteString
        let imageUrlString = urlString.components(separatedBy: "._") [0] + ".V0_UX600.jpg"
        
        guard let newURL = URL(string: imageUrlString) else {
            return imageURL
        }
        return newURL
    }
}
