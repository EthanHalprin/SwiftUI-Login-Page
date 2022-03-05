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
    let edgeSize: CGFloat = 30.0
    let cornerRadius: CGFloat = 10.0
    
    var body: some View {
        Button(action: {
        }) {
            if isSystem {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: edgeSize, height: edgeSize, alignment: .center)
                    .accentColor(Color(UIColor.systemBlue))
                    .padding()
                    .cornerRadius(cornerRadius)
            } else {
                Image(imageName)
                    .resizable()
                    .frame(width: edgeSize, height: edgeSize, alignment: .center)
                    .accentColor(Color(UIColor.systemBlue))
                    .padding()
                    .cornerRadius(cornerRadius)
            }
        }
    }
}

struct LogoButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogoButtonView(imageName: "applelogo", isSystem: true)
    }
}
