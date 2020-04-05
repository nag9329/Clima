//
//  WeatherModel.swift
//  Clima
//
//  Created by Nagarjuna Ramagiri on 3/23/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let name: String
    let id: Int
    let temp: Double
    
    var temperatureString: String {
        return String(format:"%.1f", temp)
    }
    
    var conditionName: String {
        var condition = ""
        switch id {
        case 200...232:
            condition = "cloud.bolt"
        case 300...321:
            condition = "cloud.drizzle"
        case 500...531:
            condition = "cloud.rain"
        case 600...622:
            condition = "cloud.snow"
        case 701...781:
            condition = "cloud.fog"
        case 800:
            condition = "sun.max"
        case 801...804:
            condition = "cloud.bolt"
        default:
            condition = "cloud"
        }
        return condition
    }
}
