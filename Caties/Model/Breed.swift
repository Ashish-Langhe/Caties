//
//  Breed.swift
//  Caties
//
//  Created by user208584 on 12/18/21.
//

import Foundation
import SwiftUI

struct Breed: Codable, CustomStringConvertible {
    
    let id: String
    let name: String
    let temperament: String
    let breedExplanation: String
    let energyLevel: Int
    let isHairLess: Bool
    let image: BreedImage
    
    var description: String {
        return "Breed with name: \(name) and id: \(id), energy level: \(energyLevel) isHairless: \(isHairLess ? "YES" : "NO")"
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case temperament
        case breedExplanation = "description"
        case energyLevel = "energy_level"
        case isHairLess = "hairless"
        case image
    }
    
    //TODO: - Need to implement this.
//    init(decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//    }
}
