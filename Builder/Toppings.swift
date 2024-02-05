//
//  Toppings.swift
//  CreationalDesignPatterns
//
//  Created by rohitmakwana on 05/02/24.
//

import Foundation

public struct Toppings: OptionSet {
    public let rawValue: Int
    
    public static let cheese = Toppings(rawValue: 1 << 0)
    public static let onion = Toppings(rawValue: 1 << 1)
    public static let lettuce = Toppings(rawValue: 1 << 2)
    public static let pickles = Toppings(rawValue: 1 << 3)
    public static let tomatoes = Toppings(rawValue: 1 << 4)
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}

extension Toppings: CustomStringConvertible {
    
    static public var debugDescriptions: [(Self, String)] = [
        (.cheese, "cheese"),
        (.onion, "onion"),
        (.lettuce, "lettuce"),
        (.pickles, "pickles"),
        (.tomatoes, "tomatoes")
    ]
    
    public var description: String {
        let result = Self.debugDescriptions.filter { contains($0.0) }.map { $0.1 }
        return "\(result.joined(separator: ", "))"
    }
}

