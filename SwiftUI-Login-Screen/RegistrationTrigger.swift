//
//  RegistrationTrigger.swift
//  SwiftUI-Login-Screen
//
//  Created by Ethan on 05/03/2022.
//

import SwiftUI

struct RegistrationTrigger: View {
    var body: some View {
        HStack {
            Text("New to our app?")
                .foregroundColor(Color(UIColor.systemGray3))
                .font(.system(size  : 15,
                              weight: .thin,
                              design: Font.Design.rounded))
            Button(action: {
            }) {
            Text("Register")
                .font(.system(size  : 15,
                              weight: .regular,
                              design: Font.Design.rounded))
                .foregroundColor(Color(UIColor.systemBlue))
                .padding()
            }
        }
    }
}

struct RegistrationTrigger_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationTrigger()
    }
}
