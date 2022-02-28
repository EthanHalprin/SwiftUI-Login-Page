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

    var body: some View {
        
        VStack() {
            
            LottieLoginView()
                .frame(width: 200, height: 200)
            
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

                CredentialTextView(text: $password,
                                   textColor: .gray,
                                   iconColor: .gray,
                                   iconName: "lock.circle.fill",
                                   isHiddenText: true)
            }
            .padding(.bottom, 50)
            
            Button(action:  {
                print("Credentials Submitted")
                print("---------------------")
                print("Username: \(self.username)\nPassword: \(self.password)")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
