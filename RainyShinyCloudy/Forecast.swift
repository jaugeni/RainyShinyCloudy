//
//  Forecast.swift
//  RainyShinyCloudy
//
//  Created by YAUHENI IVANIUK on 1/12/17.
//  Copyright © 2017 YauheniIvaniuk. All rights reserved.
//

import Foundation
import Alamofire

class  Forecast {
    
    private var _date: String!
    private var _weatherType: String!
    private var _highTemp: String!
    private var _lowTemp: String!
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var highTemp: String {
        if _highTemp == nil {
            _highTemp = ""
        }
        return _highTemp
    }
    
    var lowTemp: String {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        return _lowTemp
    }
    
    private func convertToFarenhientFromKelvin(temp: Double) -> String {
        let kelvinToFarenheitPreDivision = (temp * (9/5) - 459.67)
        
        let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
        return "\(kelvinToFarenheit)°"
    }
    
    init(weatherDict: Dictionary<String, AnyObject>) {
        
        if let temp = weatherDict["temp"] as? Dictionary<String, AnyObject> {
            
            if let min = temp["min"] as? Double {
                self._lowTemp = convertToFarenhientFromKelvin(temp: min)
            }
            
            if let max = temp["max"] as? Double {
                self._highTemp = convertToFarenhientFromKelvin(temp: max)
            }
        }
        
        if let weather = weatherDict["weather"] as? [Dictionary<String, AnyObject>] {
            if let main = weather[0]["main"] as? String {
                self._weatherType = main
            }
        }
        
        if let date = weatherDict["dt"] as? Double {
            
            let unixConvertedDate = Date(timeIntervalSince1970: date)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.timeStyle = .none
            self._date = unixConvertedDate.dayOfTheWeek()
        }
        
    }
}

extension Date {
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}
