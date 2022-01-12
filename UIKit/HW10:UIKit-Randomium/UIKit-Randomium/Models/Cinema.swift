//
//  Cinema.swift
//  UIKit-RandomCinema
//
//  Created by Kalabishka Ivan on 07.10.2021.
//

import Foundation

struct Cinema: Codable {
    let docs: [Doc]
}

struct Doc: Codable {
    let poster: Poster
    let name: String
    let description: String
    let year: Int
    let movieLength: Int
}

struct Poster: Codable {
    let url: String
}

// MUSIC 
struct MusicAlbum: Codable {
    let albums: Albums
}

struct Albums: Codable {
    let album: [Album]
}

struct Album: Codable {
    let name: String
    let artist: Artist
    let image: [Image]
}

struct Artist: Codable {
    let name: String
}

struct Image: Codable {
    let text: String
    let size: String
    
    enum CodingKeys: String, CodingKey {
        case text = "#text"
        case size
    }
}
