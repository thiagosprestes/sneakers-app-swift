//
//  HomeViewModel.swift
//  sneakersApp
//
//  Created by Thiago on 13/02/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    var sneakers = [
        Sneaker(
            name: "Michael Jordan",
            value: 250,
            image: "MichaelJordan",
            colors: [
                ColorOption(name: "Red", hex: "#BC1C11"),
                ColorOption(name: "Black", hex: "#000000")
            ],
            sizes: [38, 39, 40, 41]
        ),
        Sneaker(
            name: "Nike Swoosh",
            value: 250,
            image: "NikeSwoosh",
            colors: [
                ColorOption(name: "Red", hex: "#BC1C11"),
                ColorOption(name: "Black", hex: "#000000")
            ],
            sizes: [37, 39, 40, 41, 42]
        )
    ]
    
    func renderValue(value: Int) -> String {
        "$ \(Double(value))"
    }
}
