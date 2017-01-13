//
//  WeatherCell.swift
//  RainyShinyCloudy
//
//  Created by YAUHENI IVANIUK on 1/12/17.
//  Copyright © 2017 YauheniIvaniuk. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLbl: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    
    func configureCell(forecast: Forecast) {
        lowTemp.text = forecast.lowTemp
        highTemp.text = forecast.highTemp
        weatherType.text = forecast.weatherType
        dayLbl.text = forecast.date
        weatherIcon.image = UIImage(named: "\(forecast.weatherType) Mini")
    }
    
}
