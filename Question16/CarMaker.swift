//
//  CarMaker.swift
//  Question16
//
//  Created by Abouzar Moradian on 9/6/24.
//

import Foundation

struct CarMaker{
    
    let name: String
    var cars: [Car]
    
    mutating func addCar(car: Car) {
        cars.append(car)
    }
}
