//
//  SwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Aip-59 Vaishali on 20/05/24.
//

import SwiftUI

struct SwiftUIView: View {
    let arr = ["apple",
               "banana",
               "carrot",
               "dryfruits",
               "pianapple",
               "watermalon",
               "mango"]
    
    @State private var shouldNavigate = false
    
    var body: some View {
        VStack{
            Text("List View Example")
            
            //            ScrollView{
            //                ForEach(0..<arr.count){ index in
            //                    VStack{
            //                        NavigationLink(destination: CollectionView(), isActive: $shouldNavigate) {
            //                            Button("\(arr[index])") {
            //                                print("Button tapped! \(arr[index])")
            //                                shouldNavigate = true
            //                            }
            //                        }
            //                    }
            //                }
            //            }
            List(arr.indices, id: \.self) { index in
                NavigationLink(destination: CollectionView()) {
                    Text("\(arr[index])")
                }
            }
        }
    }
}

#Preview {
    SwiftUIView()
}
