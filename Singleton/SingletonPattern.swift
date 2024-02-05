//
//  SingletonPattern.swift
//  CreationalDesignPatterns
//
//  Created by rohitmakwana on 02/02/24.
//

import Foundation

final class LocationManager {
    
    static let shared = LocationManager()
    
    var locationGranted: Bool = false
    
    // Initializer access level should be private to avoid create other instance
    private init() {}
    
    func requestForLocation() {
        
        locationGranted = true
        print("Location granted")
    }
}
