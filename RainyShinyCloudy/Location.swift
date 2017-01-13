//
//  Location.swift
//  RainyShinyCloudy
//
//  Created by YAUHENI IVANIUK on 1/13/17.
//  Copyright © 2017 YauheniIvaniuk. All rights reserved.
//

import Foundation
import CoreLocation

class Location {
    
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
