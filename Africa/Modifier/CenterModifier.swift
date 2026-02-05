//
//  CenterModifier.swift
//  Africa
//
//  Created by Labhesh Dudi on 05/02/26.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
