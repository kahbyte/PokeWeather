//
//  Device.swift
//  PokeWeather
//
//  Created by Kauê Sales on 09/08/21.
//

import UIKit

class Device {
    static let base: CGFloat = 414 // iphone 11 width
    
    static var ratio: CGFloat {
        return UIScreen.main.bounds.width / base
    }
}
