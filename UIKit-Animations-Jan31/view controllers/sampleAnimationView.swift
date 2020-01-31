//
//  sampleAnimationView.swift
//  UIKit-Animations-Jan31
//
//  Created by Pursuit on 1/31/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class sampleAnimationView: UIView {

    public lazy var pursuitLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "pursuit-logo")
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func commonInit() {
        
        
    }
    
    private func pursuitLogoConstraints(){
        addSubview(pursuitLogo)
        
        pursuitLogo.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pursuitLogo.centerXAnchor.constraint(equalTo: centerXAnchor),
            pursuitLogo.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            pursuitLogo.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            pursuitLogo.heightAnchor.constraint(equalTo: pursuitLogo.widthAnchor)// square
        ])
    }

}
