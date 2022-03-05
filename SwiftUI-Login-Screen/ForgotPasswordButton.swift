//
//  ForgotPasswordButton.swift
//  SwiftUI-Login-Screen
//
//  Created by Ethan on 05/03/2022.
//

import SwiftUI

struct ForgotPasswordButton: View {
    
    let width: CGFloat = 100.0
    
    var body: some View {
        Button(action: {
        }) {
        Text("Forgot?")
            .font(.system(size  : 13,
                          weight: .medium,
                          design: Font.Design.rounded))
            .foregroundColor(Color(UIColor.systemBlue))
            .padding()
        }
        .frame(width: width, height: 25, alignment: .leading)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: UIScreen.main.bounds.width - width*1.95))
    }
}

struct ForgotPasswordButton_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordButton()
    }
}
