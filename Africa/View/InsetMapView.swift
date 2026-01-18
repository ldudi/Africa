//
//  InsetMapView.swift
//  Africa
//
//  Created by Labhesh Dudi on 13/01/26.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    // MARK: - PROPERTIES
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    // MARK: BODY
    
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(Color.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                    } //: HSTACK
                } //: Navigation
            )
            .frame(height: 256)
            .cornerRadius(12)
    }
}

// MARK: PREVIEW

#Preview {
    InsetMapView()
}
