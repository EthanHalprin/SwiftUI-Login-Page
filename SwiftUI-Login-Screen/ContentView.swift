//
//  ContentView.swift
//  SwiftUI-Login-Screen
//
//  Created by Ethan on 25/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username: String = "username"
    @State private var password: String = "password"
    @FocusState private var textFieldIsFocused: Bool

    var body: some View {
        
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color.white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .ignoresSafeArea()
                .onTapGesture { textFieldIsFocused = false }
            
            VStack() {
                
                LottieLoginView()
                    .frame(width: 200, height: 200)
                    .padding(.top, 45)

                Text("Login")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size  : 45,
                                  weight: .bold,
                                  design: Font.Design.rounded))
                    .foregroundColor(Color(UIColor.systemBlue))
                    .padding(.bottom, 30)
                    .padding(.leading, 15)

                VStack(spacing: 25) {
                    CredentialTextView(text: $username,
                                       textColor: Color(UIColor.systemGray3),
                                       iconColor: Color(UIColor.systemBlue),
                                       iconName: "person.circle.fill",
                                       isHiddenText: false)
                        .focused($textFieldIsFocused)

                    CredentialTextView(text: $password,
                                       textColor: Color(UIColor.systemGray3),
                                       iconColor: Color(UIColor.systemBlue),
                                       iconName: "lock.circle.fill",
                                       isHiddenText: true)
                        .focused($textFieldIsFocused)
                }
                
                ForgotPasswordButton()
                                
                Button(action:  {
                    print("\n\nCredentials Submitted\n---------------------\nUsername: \(self.username)\nPassword: \(self.password)\n\n")
                    textFieldIsFocused = false
                }) {
                    HStack {
                        Text("Submit")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                    .frame(width: 200, height: 25, alignment: .center)
                    .padding(10.0)
                    .background(Color(UIColor.systemBlue))
                    .foregroundColor(Color.white)
                    .clipShape(Capsule())
                }
                
                LoginOptionsPanel()
                
                Spacer()

                RegistrationTrigger()
                
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

extension App {
    
}
