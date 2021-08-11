//
//  PokeAPI.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

import Foundation

struct PokeAPI: APIHandler {
    var pokemonNumber: Int
    
    func makeRequest() -> URLRequest? {
        let urlString = "https://pokeapi.co/api/v2/pokemon/\(pokemonNumber)"
        
        if let url = URL(string: urlString) {
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = HTTPMethod.get.rawValue
            return urlRequest
        }
        return nil
    }
    
    func parseResponse(data: Data, response: HTTPURLResponse) throws -> PokemonResponse {
        return try defaultParseResponse(data: data,response: response)
    }
}
