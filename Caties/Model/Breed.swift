//
//  Breed.swift
//  Caties
//
//  Created by user208584 on 12/18/21.
//

import Foundation

struct Breed: Codable, CustomStringConvertible {
    
    let id: String
    let name: String
    let temperament: String
    let breedExplanation: String
    let energyLevel: Int
    let isHairLess: Bool
    let image: BreedImage
    
    var description: String {
        return "Breed with name"
    }
    
    
}
