//
//  LoginOptionsPanel.swift
//  SwiftUI-Login-Screen
//
//  Created by Ethan on 05/03/2022.
//

import SwiftUI

struct LoginOptionsPanel: View {
    var body: some View {
        Text("Or, login with...")
            .font(.system(size  : 15,
                          weight: .medium,
                          design: Font.Design.rounded))
            .foregroundColor(Color(UIColor.systemGray3))
            .padding()
        
        HStack(spacing: 20) {
            LogoButtonView(imageName: "applelogo", isSystem: true)
            // https://icon-library.com/icon/google-login-icon-24.html
            LogoButtonView(imageName: "google-login-icon-24", isSystem: false)
            // https://www.vectorico.com/facebook-logo/
            LogoButtonView(imageName: "Facebook-Logo", isSystem: false)
        }
    }
}

struct LoginOptionsPanel_Previews: PreviewProvider {
    static var previews: some View {
        LoginOptionsPanel()
    }
}
