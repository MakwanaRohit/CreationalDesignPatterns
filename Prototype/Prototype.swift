//
//  Prototype.swift
//  CreationalDesignPatterns
//
//  Created by rohitmakwana on 05/02/24.
//

import Foundation


// MARK: - Example 1

protocol Clonable {
    func clone() -> Clonable
}

// Class Apple which implements the protocol

class Apple: Clonable {
    
    var count: Int
    var price: Double
    
    init(count: Int, price: Double) {
        self.count = count
        self.price = price
    }
    
    // function definition for cloning the object
    func clone() -> Clonable {
        return Apple(count: count, price: price)
    }
}

// Usage: -

let apple = Apple(count: 4, price: 20)
let clone = apple.clone()


// **************************************************** //


// MARK: - Example 2

class Car {
    var companyName: String
    var color: String
    var model: String
    var engineType: EngineType
    
    init(companyName: String, color: String, model: String, engineType: EngineType) {
        self.companyName = companyName
        self.color = color
        self.model = model
        self.engineType = engineType
    }
    
    func clone(companyName: String? = nil, color: String? = nil, model: String? = nil, engineType: EngineType? = nil) -> Car {
        
        if let companyName = companyName {
            self.companyName = companyName
        }
        
        if let color = color {
            self.color = color
        }
        
        if let model = model {
            self.model = model
        }
        
        if let engineType = engineType {
            self.engineType = engineType
        }
        
        return Car(companyName: self.companyName,
                   color: self.color,
                   model: self.model,
                   engineType: self.engineType)
    }
}

enum EngineType {
    case petrol, diesel, cng, electric
}

// Usage: -

let car = Car(companyName: "Ford", color: "red", model: "F1", engineType: .diesel)
let cloneCar = car.clone()
