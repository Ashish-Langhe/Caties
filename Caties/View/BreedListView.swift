//
//  BreedListView.swift
//  Caties
//
//  Created by ASHISH LANGHE on 12/17/21.
//

import SwiftUI

struct BreedListView: View {
    let breeds = [Breed]
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct BreedListView_Previews: PreviewProvider {
    static var previews: some View {
        BreedListView(breeds: [Breed]())
    }
}
