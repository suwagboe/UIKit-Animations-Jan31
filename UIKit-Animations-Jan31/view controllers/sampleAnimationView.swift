//
//  sampleAnimationView.swift
//  UIKit-Animations-Jan31
//
//  Created by Pursuit on 1/31/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class SampleAnimationView: UIView {

    public lazy var pursuitLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "pursuit-logo")
        // this is a default that we would usually
        imageView.contentMode = .scaleAspectFit
        
        //imageView.isHidden = true
        return imageView
    }()
    
    public lazy var SwiftLogo: UIImageView = {
           let imageView = UIImageView()
           imageView.image = #imageLiteral(resourceName: "swift-logo")
           // this is a default that we would usually
           imageView.contentMode = .scaleAspectFit
        
        imageView.isHidden = true
        //  make sure it doesnt go outside the circle
        imageView.clipsToBounds = true
           return imageView
       }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    // only called coming from a storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        pursuitLogoConstraints()
        SwfitLogoConstraints()
    }
    
    private func pursuitLogoConstraints(){
        addSubview(pursuitLogo)
        
        pursuitLogo.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pursuitLogo.centerXAnchor.constraint(equalTo: centerXAnchor),
            pursuitLogo.centerYAnchor.constraint(equalTo: centerYAnchor),
            pursuitLogo.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            pursuitLogo.heightAnchor.constraint(equalTo: pursuitLogo.widthAnchor)// square
        ])
    }
    
    private func SwfitLogoConstraints(){
        addSubview(SwiftLogo)
        
        // dont forget this line or nothing will appear..
        SwiftLogo.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            SwiftLogo.centerXAnchor.constraint(equalTo: centerXAnchor),
            SwiftLogo.centerYAnchor.constraint(equalTo: centerYAnchor),
            SwiftLogo.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            SwiftLogo.heightAnchor.constraint(equalTo: SwiftLogo.widthAnchor)// square
        ])
        
        
    }

}
