//
//  CollectionView.swift
//  SwiftUIDemo
//
//  Created by Aip-59 Vaishali on 20/05/24.
//

import SwiftUI

struct CollectionView: View {
    var body: some View {
        ScrollView{
            Text("Colection View Example")
            ForEach(0..<4) { i in
                HStack {
                    ForEach(0..<3) { j in
                        NavigationLink(destination: LandmarkList()) {
                            ZStack(alignment: .center) {
                                Image("feedback")
                                    .imageScale(.large)
                                    .foregroundStyle(.red)
                            }
                            .frame(width: 120, height: 120)
                            .background(Color.gray)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    CollectionView()
}
