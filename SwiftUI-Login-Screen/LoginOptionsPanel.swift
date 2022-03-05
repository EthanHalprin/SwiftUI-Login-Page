//
//  LoginOptionsPanel.swift
//  SwiftUI-Login-Screen
//
//  Created by Ethan on 05/03/2022.
//

import SwiftUI

struct LoginOptionsPanel: View {
    
    let edgeSize: CGFloat = 50.0

    var body: some View {
        Text("Or, login with...")
            .font(.system(size  : 15,
                          weight: .medium,
                          design: Font.Design.rounded))
            .foregroundColor(Color("textColor"))
            .padding()
        
        HStack(spacing: 20) {
            Button(action: {
            }) {
                Image("apple-bleu")
                    .resizable()
                    .frame(width: edgeSize, height: edgeSize, alignment: .center)
                    .accentColor(Color(UIColor.systemBlue))
                    .padding()
            }

            Button(action: {
            }) {
                Image("google-login-icon-24")
                    .resizable()
                    .frame(width: edgeSize, height: edgeSize, alignment: .center)
                    .accentColor(Color(UIColor.systemBlue))
                    .padding()
            }
            
            Button(action: {
            }) {
                Image("Facebook-Logo")
                    .resizable()
                    .frame(width: edgeSize, height: edgeSize, alignment: .center)
                    .accentColor(Color(UIColor.systemBlue))
                    .padding()
            }

        }
    }
}

struct LoginOptionsPanel_Previews: PreviewProvider {
    static var previews: some View {
        LoginOptionsPanel()
    }
}
