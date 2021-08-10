//
//  Pokemon.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

/// Struct used to fetch name, image, types, weight and id for given Pokémon from PokeAPI.
struct PokemonResponse: Codable {
    let species: Species
    let sprites: Sprites
    let types: [Types]
    let weight: Int
    let id: Int
}

struct Species: Codable {
    let name: String
}

struct Sprites: Codable {
    let other: Other
}

/// This part of the structure returns a string which I'll then use to fetch the image from another API
struct Other: Codable {
    let officialArtwork: OfficialArtwork
    
    enum CodingKeys: String, CodingKey { // ~this one was a fun one
        case officialArtwork = "official-artwork"
    }
}

struct OfficialArtwork: Codable{
    let front_default: String
}

struct Types: Codable {
    let type: Type
}

struct Type: Codable {
    let name: String
}
