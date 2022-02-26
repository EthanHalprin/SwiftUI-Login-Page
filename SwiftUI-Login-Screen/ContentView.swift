//
//  ContentView.swift
//  SwiftUI-Login-Screen
//
//  Created by Ethan on 25/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack(spacing: 10) {
//
//            Spacer()
//
            LottieLoginView()
                .frame(width: 180, height: 180)
            
//            Spacer()
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
