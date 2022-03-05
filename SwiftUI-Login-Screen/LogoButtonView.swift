//
//  LogoButtonView.swift
//  SwiftUI-Login-Screen
//
//  Created by Ethan on 03/03/2022.
//

import SwiftUI

struct LogoButtonView: View {
    
    var imageName: String
    var isSystem: Bool
    
    var body: some View {
        Button(action: {
        }) {
            if isSystem {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
                    .accentColor(.blue)
                    .padding()
                    .cornerRadius(8.0)
            } else {
                Image(imageName)
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
                    .accentColor(.blue)
                    .padding()
                    .cornerRadius(8.0)
            }
        }
    }
}

struct LogoButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogoButtonView(imageName: "applelogo", isSystem: true)
    }
}
