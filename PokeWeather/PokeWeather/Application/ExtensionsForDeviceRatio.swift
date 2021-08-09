//
//  ExtensionsForDeviceRatio.swift
//  PokeWeather
//
//  Created by Kauê Sales on 09/08/21.
//

import UIKit

extension CGFloat {
    
    var adjusted: CGFloat{
        return self * Device.ratio
    }
}

extension Double {
    
    var adjusted: CGFloat{
        return CGFloat(self) * Device.ratio
    }
}

extension Int {
   
    var adjusted: CGFloat{
        return CGFloat(self) * Device.ratio
    }
}
