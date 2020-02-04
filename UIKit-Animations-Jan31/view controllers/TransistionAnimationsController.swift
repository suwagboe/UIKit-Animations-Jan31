//
//  TransistionAnimationsController.swift
//  UIKit-Animations-Jan31
//
//  Created by Pursuit on 2/4/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class TransistionAnimationsController: UIViewController {
    
    //create a tap gesture
    private lazy var tapGesture: UITapGestureRecognizer = {
        // this only declares the gesture. but it doesn't me it gets used this just says that it is here.
        let gesture = UITapGestureRecognizer()
        // the image cannot respond to the function. so it needs to be on the image. the target is where we are dragging it to
        gesture.addTarget(self, action: #selector(animate))
        
        return gesture
    }()
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // set default image
        imageView.image = UIImage(named: "dog")
        view.backgroundColor = .systemPink
        
        // need to enable user interation on image view or a label as those two UI element are set to false by default
        imageView.isUserInteractionEnabled = true
        
        // add gesture to the image view this part enable the interation between the gesture and the image
        imageView.addGestureRecognizer(tapGesture) // this is the gesture it should recognizer.
    }

    @objc
    private func animate() {
        // set up gesture that when the image is tap the image gets called.
        print("animate") // to confirm that this does get called when it is tapped
        
        
        
    }
    
}
