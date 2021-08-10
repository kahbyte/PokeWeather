//
//  WeatherResponse.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

struct WeatherForecast: Codable {
    var timezone: String
    var current: Forecast
    var daily: [Forecast]
}

struct Forecast: Codable {
    var dt: Int
    var wind_deg: Int
    var weather: [Weather]
}

struct Weather: Codable {
    var main: String
}
