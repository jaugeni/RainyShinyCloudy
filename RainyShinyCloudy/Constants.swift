//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by YAUHENI IVANIUK on 1/12/17.
//  Copyright © 2017 YauheniIvaniuk. All rights reserved.
//

import Foundation

let baseUrl = "http://api.openweathermap.org/data/2.5/weather?"
let latitude = "lat="
let longeitude = "&lon="
let appID = "&appid="
let apiKey = "ef3d038f7b3f9178866f296d63e1158b"

typealias DownloadCompleate = () -> ()

let currentWeatherURLBasic = "\(baseUrl)\(latitude)-36\(longeitude)123\(appID)\(apiKey)"


let forecastURLBasic = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=-36&lon=123&cnt=10&mode=json&appid=ef3d038f7b3f9178866f296d63e1158b"

