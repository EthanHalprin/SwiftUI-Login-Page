//
//  CredentialTextView.swift
//  SwiftUI-Login-Screen
//
//  Created by Ethan on 27/02/2022.
//

import SwiftUI

struct CredentialTextView: View {
    
    @Binding var text: String
    @State private var isEyeSlashed: Bool = true
    let textColor: Color
    let iconColor: Color
    let iconName: String
    let isHiddenText: Bool
    

    var body: some View {
        
        HStack {
            
            Image(systemName: iconName)
                .renderingMode(.template)
                .resizable()
                .foregroundColor(iconColor)
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
                .padding(.leading, 12)
                .padding(.trailing, 12)

            VStack {
                if isHiddenText {
                    ZStack(alignment: .trailing) {
                        if isEyeSlashed {
                            SecureField("text", text: $text)
                        } else {
                            TextField("text", text: $text)
                        }
                        Button(action: {
                            self.isEyeSlashed.toggle()
                        }) {
                            Image(systemName: self.isEyeSlashed ? "eye.slash" : "eye")
                                .accentColor(.blue)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 47))
                        }
                    }
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


struct CredentialTextView_Previews: PreviewProvider {
    
    @State static private var someText: String = "abcdefg"

    static var previews: some View {
        CredentialTextView(text: $someText,
                           textColor: .gray,
                           iconColor: .blue,
                           iconName: "person.circle.fill",
                           isHiddenText: false)
    }
}
