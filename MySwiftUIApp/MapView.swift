//
//  MapView.swift
//  SwiftUIApp
//
//  Created by Максим Донских on 29.01.2023.
//

import SwiftUI
import MapKit


struct MapView: View {
    var coordinate: Coordinates
        @State private var region = MKCoordinateRegion()

        var body: some View {
            Map(coordinateRegion: $region)
                .onAppear {
                    setRegion(CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude))
                }
        }
    
        private func setRegion(_ coordinate: CLLocationCoordinate2D) {
            region = MKCoordinateRegion(
                center: coordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: Coordinates(latitude: 37.48069244519799, longitude: -122.15305380147139))
    }
}
