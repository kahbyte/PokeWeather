//
//  OpenWeatherAPI.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

import Foundation

struct OpenWeatherAPI: APIHandler {
    var lat: Double
    var lon: Double
    
    func makeRequest() -> URLRequest? {
        let urlString = "https://api.openweathermap.org/data/2.5/onecall?lat=\(lat)&lon=\(lon)&exclude=minutely,hourly&appid=1707f41b47f7b05fe8a5621438c83094"
        
        if let url = URL(string: urlString) {
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = HTTPMethod.get.rawValue
            return urlRequest
        }
        return nil
    }
    
    func parseResponse(data: Data, response: HTTPURLResponse) throws -> WeatherForecast {
        return try defaultParseResponse(data: data,response: response)
    }
}
