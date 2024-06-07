import SwiftUI

struct ContentView: View {
    let collumGrid = [
        GridItem(.flexible())
    ]
    @State private var input: String = ""
    @State private var inputPwd: String = ""
    @State var isShowingAlert = false
    @State private var shouldNavigate = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                //                    .padding(.top, 20)
                Text("-----SIGN IN-----")
                //                Spacer()
                
                VStack() {
                    TextField("Enter Username", text: $input)
                        .textFieldStyle(PlainTextFieldStyle())
                        .frame(height: 45)
                        .padding(.horizontal, 10)
                        .border(Color.gray, width: 0.2)
                    
                    SecureField("Enter Password", text: $inputPwd)
                        .textFieldStyle(PlainTextFieldStyle())
                        .frame(height: 45)
                        .padding(.horizontal, 10)
                        .border(Color.gray, width: 0.2)
                    
                    NavigationLink(destination: SwiftUIView(), isActive: $shouldNavigate) {
                        Button {
                            if input.isEmpty || inputPwd.isEmpty {
                                isShowingAlert.toggle()
                            } else {
                                shouldNavigate = true
                            }
                        } label: {
                            Text("Signin")
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity)
                                .frame(height: 30)
                        }
                        .buttonStyle(.borderedProminent)
                    }
                }
                .padding()
                
                .alert("SignIn", isPresented: $isShowingAlert) {
                    Button("OK", role: .cancel) { }
                } message: {
                    
                    if input.isEmpty{
                        Text("Please enter your username")
                    } else if inputPwd.isEmpty {
                        Text("Please enter your password")
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
