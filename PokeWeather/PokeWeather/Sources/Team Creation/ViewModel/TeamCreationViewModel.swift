//
//  TeamCreationViewModel.swift
//  PokeWeather
//
//  Created by Kauê Sales on 10/08/21.
//

import Foundation

protocol TeamCreationViewModelCoordinatorDelegate {
    func showHome()
}

protocol TeamCreationViewModelProtocol {
    func showHome()
    func getAPIData()
}

class TeamCreationViewModel {
    var coordinatorDelegate: TeamCreationViewModelCoordinatorDelegate
    
    init(coordinator: TeamCreationViewModelCoordinatorDelegate) {
        self.coordinatorDelegate = coordinator
    }
    
    func getAPIData(/*completion: @escaping (WeatherForecast?, Error?) -> ()*/) {
        let request = OpenWeatherAPI(lat: -23.5558, lon: -46.6396)
        
        let apiLoader = APILoader(apiRequest: request)
        apiLoader.loadAPIRequest { result in
            switch result {
            case .success(let forecast):
                print(forecast.current)
            case .failure(let error):
                print("failed", error)
            }
        }
        
        let anotherRequest = PokeAPI(pokemonNumber: 1)
        let anotherAPILoader = APILoader(apiRequest: anotherRequest)
        anotherAPILoader.loadAPIRequest(completionHandler: { result in
            switch result {
            case .success(let pokemon):
                print(pokemon.species.name)
            case .failure(let error):
                print("seu pokemon morreu", error)
            }
        })
    }
}

extension TeamCreationViewModel: TeamCreationViewModelProtocol {
    func showHome() {
        coordinatorDelegate.showHome()
    }
}
