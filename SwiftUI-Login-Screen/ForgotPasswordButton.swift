//
//  ForgotPasswordButton.swift
//  SwiftUI-Login-Screen
//
//  Created by Ethan on 05/03/2022.
//

import SwiftUI

struct ForgotPasswordButton: View {
    var body: some View {
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
    }
}

struct ForgotPasswordButton_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordButton()
    }
}
