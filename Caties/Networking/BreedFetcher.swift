//
//  BreedFetcher.swift
//  Caties
//
//  Created by ASHISH LANGHE on 12/17/21.
//

import Foundation

class BreedFetcher: ObservableObject {
    
    //MARK: - PROPERTIES
    @Published var breeds = [Breed]()
    @Published var errorMessage:String? = nil
    @Published var isLoading:Bool = false
    
    init() {
        
    }
    
    
    func fetchAllBreeds() {
        
        isLoading = true
        
        let url = URL(string: "https://api.thecatapi.com/v1/breeds?limit=9")!
        
        let task = URLSession.shared.dataTask(with: url) {[unowned self] data, response, error in
           
            self.isLoading = false
            
            let decoder = JSONDecoder()
            
            if let data = data {
                
                do {
                    let breeds = try decoder.decode([Breed].self, from: data)
                    print(breeds)
                    self.breeds = breeds
                } catch {
                    print(error)
                }
            }
            
        }
        task.resume()
    }
    
}
