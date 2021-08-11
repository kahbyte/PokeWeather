//
//  APILoader.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

import Foundation

class APILoader<T: APIHandler> {
    let apiRequest: T
    let urlSession: URLSession
    
    init(apiRequest: T, urlSession: URLSession = .shared) {
        self.apiRequest = apiRequest
        self.urlSession = urlSession
    }
    
    func loadAPIRequest(completionHandler: @escaping (Result<T.ResponseDataType, Error>) -> ()) {
        if let urlRequest = apiRequest.makeRequest() {
            urlSession.dataTask(with: urlRequest) { (data, response, error) in
                guard let data = data, let httpResponse = response as? HTTPURLResponse else {
                    return
                }
                do {
                    let parsedResponse = try self.apiRequest.parseResponse(data: data, response: httpResponse)
                    completionHandler(.success(parsedResponse))
                } catch {
                    completionHandler(.failure(error))
                }
            }.resume()
        }
    }
}
