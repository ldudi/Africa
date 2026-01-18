//
//  InsetFactView.swift
//  Africa
//
//  Created by Labhesh Dudi on 13/01/26.
//

import SwiftUI

struct InsetFactView: View {
    
    // MARK: PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: BOX
    }
}

// MARK: - PREVIEW

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    InsetFactView(animal: animals[1])
}
