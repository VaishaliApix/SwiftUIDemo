//
//  MapView.swift
//  SwiftUIDemo
//
//  Created by Aip-59 Vaishali on 24/05/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D

    var body: some View {
        Map(coordinateRegion: .constant(region), annotationItems: [AnnotationItem(coordinate: coordinate)]) { item in
            MapPin(coordinate: item.coordinate)
        }
    }

    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0)
        )
    }
}

struct AnnotationItem: Identifiable {
    let id = UUID()
    var coordinate: CLLocationCoordinate2D
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
