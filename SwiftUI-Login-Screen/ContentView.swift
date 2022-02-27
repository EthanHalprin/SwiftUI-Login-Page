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
                .padding(EdgeInsets.init(top: 20, leading: 16, bottom: 40, trailing: 20))

            VStack(spacing: 25) {
                CredentialTextView(text: $username,
                                   textColor: .gray,
                                   iconColor: .gray,
                                   iconName: "person.circle.fill",
                                   isHidden: false)

                CredentialTextView(text: $password,
                                   textColor: .gray,
                                   iconColor: .gray,
                                   iconName: "lock.circle.fill",
                                   isHidden: true)
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
