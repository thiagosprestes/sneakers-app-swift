//
//  SneakerViewModel.swift
//  sneakersApp
//
//  Created by Thiago on 13/02/24.
//

import Foundation

class SneakerViewModel: ObservableObject {
    @Published var sneaker: Sneaker
    
    init(sneaker: Sneaker) {
        self.sneaker = sneaker
    }
    
    func splitName() -> (firstName: String, secondName: String) {
        let split = sneaker.name.components(separatedBy: " ")
        
        let firstName = split[0]
        let secondName = split[1]
        
       return (
            firstName, secondName
        )
    }
}
