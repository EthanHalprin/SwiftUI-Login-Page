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
                    .foregroundColor(Color.blue)
                    .padding(.bottom, 30)
                    .padding(.leading, 15)

                VStack(spacing: 25) {
                    CredentialTextView(text: $username,
                                       textColor: .gray,
                                       iconColor: .blue,
                                       iconName: "person.circle.fill",
                                       isHiddenText: false)
                        .focused($textFieldIsFocused)

                    CredentialTextView(text: $password,
                                       textColor: .gray,
                                       iconColor: .blue,
                                       iconName: "lock.circle.fill",
                                       isHiddenText: true)
                        .focused($textFieldIsFocused)
                }

                Button(action: {
                }) {
                Text("Forgot?")
                    .font(.system(size  : 13,
                                  weight: .medium,
                                  design: Font.Design.rounded))
                    .foregroundColor(.blue)
                    .padding()
                }
                .frame(width: 100, height: 25, alignment: .leading)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 190))
                                
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
                
                Text("Or, login with...")
                    .fontWeight(Font.Weight.thin)
                    .padding()
                
                HStack(spacing: 20) {
                    LogoButtonView(imageName: "applelogo", isSystem: true)
                    // https://icon-library.com/icon/google-login-icon-24.html
                    LogoButtonView(imageName: "google-login-icon-24", isSystem: false)
                    // https://www.vectorico.com/facebook-logo/
                    LogoButtonView(imageName: "Facebook-Logo", isSystem: false)
                }
                
                Spacer()

                HStack {
                    Text("New to our app?")
                        .font(.system(size  : 15,
                                      weight: .thin,
                                      design: Font.Design.rounded))
                    Button(action: {
                    }) {
                    Text("Register")
                        .font(.system(size  : 15,
                                      weight: .regular,
                                      design: Font.Design.rounded))
                        .foregroundColor(.blue)
                        .padding()
                    }
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
