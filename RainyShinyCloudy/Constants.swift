//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by YAUHENI IVANIUK on 1/12/17.
//  Copyright © 2017 YauheniIvaniuk. All rights reserved.
//

import Foundation

typealias DownloadCompleate = () -> ()

let currentWeatherURLBasic = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid="

let forecastURLBasic = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&mode=json&appid="

