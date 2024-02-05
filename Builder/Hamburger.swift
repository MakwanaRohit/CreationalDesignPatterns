//
//  Hamburger.swift
//  CreationalDesignPatterns
//
//  Created by rohitmakwana on 02/02/24.
//

import Foundation

//MARK: - Hamburger
public struct Hamburger {
    public let meat: Meat
    public let sauce: Sauces
    public let toppings: Toppings
}

public enum Meat: String {
    case beef, chicken, tofu
}

