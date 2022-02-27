//
//  CredentialTextView.swift
//  SwiftUI-Login-Screen
//
//  Created by Ethan on 27/02/2022.
//

import SwiftUI

struct CredentialTextView: View {
    
    @Binding var text: String
    let textColor: Color
    let iconColor: Color
    let iconName: String
    let isHidden: Bool
    
    var body: some View {
        HStack {
            
            Image(systemName: iconName)
                .renderingMode(.original)
                .resizable()
                .foregroundColor(iconColor)
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
                .padding(.leading, 12)
                .padding(.trailing, 12)

             VStack {
                 if isHidden {
                     SecureField("password", text: $text)
                         .padding(.trailing, 16)
                         .foregroundColor(textColor)
                 } else {
                     TextField("username", text: $text)
                        .padding(.trailing, 16)
                        .foregroundColor(textColor)
                 }
                        
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(textColor)
                    .padding(.trailing, 50)
             }
        }
    }
}
