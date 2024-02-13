//
//  Helpers.swift
//  sneakersApp
//
//  Created by Thiago on 13/02/24.
//

import Foundation

func splitName(name: String) -> (firstName: String, secondName: String) {
    let split = name.components(separatedBy: " ")
    
    let firstName = split[0]
    let secondName = split[1]
    
   return (
        firstName, secondName
    )
}
