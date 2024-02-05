//
//  BurgerShop.swift
//  CreationalDesignPatterns
//
//  Created by rohitmakwana on 05/02/24.
//

import Foundation

public final class BurgerShop {
    
    public func createCheeseBurger(using builder: HamburgerBuilder) -> Hamburger {
        builder.setMeat(.beef)
        builder.addToppings([.cheese, .lettuce, .tomatoes])
        builder.addSauces([.barbeque, .ketchup, .mayonnaise])
        return builder.build()
    }
    
    public func createVegetarianBurger(using builder: HamburgerBuilder) -> Hamburger {
        builder.setMeat(.tofu)
        builder.addSauces([.mayonnaise, .mustard])
        builder.addToppings([.lettuce, .tomatoes, .pickles])
        return builder.build()
    }
}
