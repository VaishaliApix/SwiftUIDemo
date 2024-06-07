//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by Aip-59 Vaishali on 24/05/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            NavigationLink {
                LandmarkDetail(landmark: landmark)
            } label: {
                LandmarkRow(landmark: landmark)
            }
        }
        .navigationTitle("Landmarks")
    }
}

#Preview {
    LandmarkList()
}
