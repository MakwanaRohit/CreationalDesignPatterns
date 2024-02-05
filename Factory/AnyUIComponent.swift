//
//  AnyUIComponent.swift
//  CreationalDesignPatterns
//
//  Created by rohitmakwana on 05/02/24.
//

import UIKit

protocol AnyUIComponent {
    
    associatedtype View
    func create() -> View
}

final class LabelFactory: AnyUIComponent {
    typealias View = UILabel
    
    func create() -> View {
        let label = UILabel()
        label.text = "Label"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular, width: .standard)
        return label
    }
}

final class ButtonFactory: AnyUIComponent {
    typealias View = UIButton
    
    func create() -> View {
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .lightGray
        return button
    }
}
