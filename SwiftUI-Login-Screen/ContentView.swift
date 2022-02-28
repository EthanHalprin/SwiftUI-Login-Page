//
//  ContentView.swift
//  SwiftUI-Login-Screen
//
//  Created by Ethan on 25/02/2022.
//

import SwiftUI

extension Color {
    static let lightSkyBlue = Color(red: 135.0/255.0, green: 206.0/255.0, blue: 250.0/255.0)
    static let aliceBlue    = Color(red: 240.0/255.0, green: 248.0/255.0, blue: 255.0/255.0)
}

struct ContentView: View {
    
    @State private var username: String = "username"
    @State private var password: String = "password"
    @FocusState private var textFieldIsFocused: Bool

    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.lightSkyBlue, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .ignoresSafeArea()
                .onTapGesture {
                    textFieldIsFocused = false
                }

            VStack() {
                
                LottieLoginView()
                    .frame(width: 200, height: 200)
                    .padding(.top, 45)

                Text("Login")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size  : 45,
                                  weight: .bold,
                                  design: Font.Design.rounded))
                    .foregroundColor(Color.blue)
                    .padding(.bottom, 30)
                    .padding(.leading, 15)

                VStack(spacing: 25) {
                    CredentialTextView(text: $username,
                                       textColor: .gray,
                                       iconColor: .gray,
                                       iconName: "person.circle.fill",
                                       isHiddenText: false)
                        .focused($textFieldIsFocused)

                    CredentialTextView(text: $password,
                                       textColor: .gray,
                                       iconColor: .gray,
                                       iconName: "lock.circle.fill",
                                       isHiddenText: true)
                        .focused($textFieldIsFocused)
                }
                .padding(.bottom, 50)
                
                Button(action:  {
                    print("Credentials Submitted")
                    print("---------------------")
                    print("Username: \(self.username)\nPassword: \(self.password)")
                    textFieldIsFocused = false
                }) {
                    HStack {
                        Text("Submit")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                    .frame(width: 200, height: 25, alignment: .center)
                    .padding(10.0)
                    .background(.blue)
                    .foregroundColor(Color.white)
                    .clipShape(Capsule())
                }
                
                Spacer()

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
