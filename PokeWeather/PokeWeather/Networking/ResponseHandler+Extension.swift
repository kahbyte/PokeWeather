//
//  ResponseHandler+Extension.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

import Foundation

struct ServiceError: Error, Codable {
    let httpStatus: Int
    let message: String
}


//Dar uma modificada nisso aqui depois para entender melhor
extension ResponseHandler {
    
    func defaultParseResponse<T: Codable>(data: Data, response: HTTPURLResponse) throws -> T  {
        let jsonDecoder = JSONDecoder()
        
        do {
            let body = try jsonDecoder.decode(T.self, from: data)
            
            if response.statusCode == 200 {
                return body
            } else {
                throw ServiceError(httpStatus: response.statusCode, message: "Unknown Error")
            }
        } catch {
            throw ServiceError(httpStatus: response.statusCode, message: error.localizedDescription)
        }
    }
}
