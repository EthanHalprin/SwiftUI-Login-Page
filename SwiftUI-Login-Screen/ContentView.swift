//
//  ContentView.swift
//  SwiftUI-Login-Screen
//
//  Created by Ethan on 25/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            LottieLoginView()
                .frame(width: 180, height: 180)
            
            Text("Login")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 40,
                              weight: .bold,
                              design: Font.Design.rounded))
                .foregroundColor(Color.blue)
                .padding()

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
