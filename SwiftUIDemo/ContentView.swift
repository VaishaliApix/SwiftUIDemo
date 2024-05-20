//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Aip-59 Vaishali on 17/05/24.
//

import SwiftUI

struct ContentView: View {
    
    let arr = ["apple",
               "banana",
               "carrot",
               "dryfruits",
               "pianapple",
               "watermalon",
               "mango"]
    
    let collumGrid = [
        GridItem(.flexible())]
    
    @State private var input :  String = ""
    @State private var inputPwd :  String = ""
    @State var isShowingAlert = false

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("SIGN IN")

            
            VStack{
                
                TextField("Enter Username ", text: $input, axis: .vertical)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Enter Password ", text: $inputPwd)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(height: 45)
                
                Button {
                    if (input == "" || inputPwd == ""){
                        isShowingAlert.toggle()
                    } else {
                        
                    }
                    
                } label: {
                    Text("Signin")
                        .frame(maxWidth: .infinity)
                        .frame(height: 30)
                }
                .buttonStyle(.borderedProminent)
            }
            
            VStack{
                Text("List View Example")
                List(arr.indices, id: \.self) { index in
                    Button("\(arr[index])") {
                        print("Button tapped! \(arr[index])")
                    }
                }

            }

            
            ScrollView{
                Text("Colection View Example")
                ForEach(0..<4) { i in
                    HStack {
                        ForEach(0..<3) { j in
                            ZStack(alignment: .center) {
                                Image(systemName: "globe")
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
        .padding()
        .alert("SignIn", isPresented: $isShowingAlert) {} message: {
            if (input == ""){
                Text("Please enter your username")
                
            } else if (inputPwd == ""){
                Text("Please enter your password")
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
