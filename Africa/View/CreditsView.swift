//
//  CreditsView.swift
//  Africa
//
//  Created by Labhesh Dudi on 05/02/26.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
                Copyright © Robert Petras
                All right reserved
                Better Apps ♡ Less code
                """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        } //: VSTACK
        .padding()
        .opacity(0.4)
    }
}

#Preview {
    CreditsView()
}

