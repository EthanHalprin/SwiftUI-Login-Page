//
//  LottieLoginView.swift
//  SwiftUI-Login-Screen
//
//  Created by Ethan on 26/02/2022.
//

import SwiftUI
import Lottie


struct LottieLoginView: UIViewRepresentable {
    
    typealias UIViewType = UIView
    
    func makeUIView(context: UIViewRepresentableContext<LottieLoginView>) -> UIView {
        
        let view = UIView(frame: .zero)

        let animationView = AnimationView()
        let animation = Animation.named("93385-login")
        guard let _ = animation else {
            fatalError("Could not find Lottie json file")
        }
        animationView.animation = animation!
        animationView.contentMode = .scaleAspectFit
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
                                     animationView.heightAnchor.constraint(equalTo: view.heightAnchor)])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
    
}
